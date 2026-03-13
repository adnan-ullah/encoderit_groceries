import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart';
import '../utils/app_theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductController>();

    return Scaffold(
      appBar: ResponsiveAppBar(
        title: Text(
          'Products (Filters Demo)',
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveFontSize(context, 20),
            fontWeight: FontWeight.bold,
            color: AppTheme.goldPrimary,
          ),
        ),
        actions: [
          Padding(
            padding: ResponsiveHelper.getResponsivePadding(context, all: 8),
            child: GemsAnimatedIcon(
              icon: Icons.refresh,
              animationType: AnimationType.rotation,
              onTap: () => controller.refresh(),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ),
          ),
        ],
        collapseOnScroll: true,
        scrollController: _scrollController,
      ),
      body: Column(
        children: [
          _FilterBar(controller: controller),
          Expanded(
            child: Obx(() {
        if (controller.isLoading.value && controller.items.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: ResponsiveHelper.getResponsiveMargin(
                    context,
                    vertical: 8,
                  ),
                  child: ShimmerListItem(
                    hasAvatar: false,
                    hasSubtitle: true,
                    lines: 2,
                  ),
                ),
              ),
            ),
          );
        }

        if (controller.errorMessage.value.isNotEmpty &&
            controller.items.isEmpty) {
          return Center(
            child: FadeSlideTransition(
              slideDirection: SlideDirection.fromBottom,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GemsAnimatedIcon(
                    icon: Icons.error_outline,
                    animationType: AnimationType.pulse,
                    repeat: true,
                    color: AppTheme.error,
                    size: ResponsiveHelper.getResponsiveSize(context, 64),
                  ),
                  ResponsiveHelper.getResponsiveSpacing(context, 16),
                  Padding(
                    padding: ResponsiveHelper.getResponsivePadding(
                      context,
                      horizontal: 32,
                    ),
                    child: Text(
                      controller.errorMessage.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.error,
                        fontSize: ResponsiveHelper.getResponsiveFontSize(
                          context,
                          14,
                        ),
                      ),
                    ),
                  ),
                  ResponsiveHelper.getResponsiveSpacing(context, 24),
                  AnimatedButton(
                    onPressed: () => controller.refresh(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        if (controller.items.isEmpty) {
          return Center(
            child: FadeSlideTransition(
              slideDirection: SlideDirection.fromBottom,
              duration: const Duration(milliseconds: 500),
              child: Text(
                'No products found.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ResponsiveHelper.getResponsiveFontSize(
                    context,
                    16,
                  ),
                  color: AppTheme.textSecondary,
                ),
              ),
            ),
          );
        }

              return RefreshIndicator(
                onRefresh: () => controller.refresh(),
                child: ListView.builder(
                  controller: _scrollController,
                  padding:
                      ResponsiveHelper.getResponsivePadding(context, all: 8),
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    final product = controller.items[index];
                    return AnimatedListItem(
                      key: ValueKey(product.id),
                      index: index,
                      animationType: ListAnimationType.fadeSlide,
                      slideDirection: ListSlideDirection.fromBottom,
                      delay: const Duration(milliseconds: 50),
                      child: _ProductItem(
                        key: ValueKey(product.id),
                        product: product,
                      ),
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _FilterBar extends StatelessWidget {
  final ProductController controller;

  const _FilterBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: AppTheme.darkCard,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _FilterChipButton(
              label: 'All',
              icon: Icons.grid_view,
              onTap: () => controller.loadItems(),
            ),
            _FilterChipButton(
              label: 'By ID (440)',
              icon: Icons.tag,
              onTap: () => controller.loadById(440),
            ),
            _FilterChipButton(
              label: 'Category 12',
              icon: Icons.category_outlined,
              onTap: () => controller.loadByCategory(12),
            ),
            _FilterChipButton(
              label: 'Brand 23',
              icon: Icons.storefront_outlined,
              onTap: () => controller.loadByBrand(23),
            ),
            _FilterChipButton(
              label: 'Best Selling',
              icon: Icons.star_rate_outlined,
              onTap: () => controller.loadBestSelling(),
            ),
            _FilterChipButton(
              label: 'Featured',
              icon: Icons.emoji_events_outlined,
              onTap: () => controller.loadFeatured(),
            ),
            _FilterChipButton(
              label: 'Newest First',
              icon: Icons.schedule_outlined,
              onTap: () =>
                  controller.loadOrdered(orderBy: 'date', order: 'desc'),
            ),
            _FilterChipButton(
              label: 'Oldest First',
              icon: Icons.history_toggle_off,
              onTap: () =>
                  controller.loadOrdered(orderBy: 'date', order: 'asc'),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterChipButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _FilterChipButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveHelper.getResponsiveMargin(
        context,
        horizontal: 4,
      ),
      child: AnimatedButton(
        onPressed: onTap,
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 12,
          vertical: 8,
        ),
        backgroundColor: AppTheme.darkBackground,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: ResponsiveHelper.getResponsiveSize(context, 16),
            ),
            SizedBox(
              width: ResponsiveHelper.getResponsiveWidth(context, 4),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: ResponsiveHelper.getResponsiveFontSize(context, 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final Product product;

  const _ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ResponsiveHelper.getResponsiveMargin(
        context,
        vertical: 4,
        horizontal: 8,
      ),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getResponsiveRadius(context, 12),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppTheme.darkCard,
          child: Text(
            product.name.isNotEmpty ? product.name[0].toUpperCase() : '?',
            style: TextStyle(
              color: AppTheme.goldPrimary,
              fontSize: ResponsiveHelper.getResponsiveFontSize(context, 16),
            ),
          ),
        ),
        title: Text(
          product.name,
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveFontSize(context, 16),
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        subtitle: Text(
          '\$${product.price ?? product.regularPrice ?? '-'}',
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveFontSize(context, 14),
            color: AppTheme.textSecondary,
          ),
        ),
        trailing: product.onSale == true
            ? Container(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.success.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getResponsiveRadius(context, 12),
                  ),
                ),
                child: Text(
                  'SALE',
                  style: TextStyle(
                    color: AppTheme.success,
                    fontSize: ResponsiveHelper.getResponsiveFontSize(
                      context,
                      12,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

