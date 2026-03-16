import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart' hide ProductImage;
import '../routes/app_pages.dart';
import '../utils/models/ProductImage.dart';
import 'sorting_page.dart';
import 'product_details_page.dart';
import '../utils/app_theme.dart';

class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({
    super.key,
    required this.categoryName,
    this.categoryId,
  });

  final String categoryName;
  final int? categoryId;

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
  static SortOption _currentSort = SortOption.popularity;

  late final ProductController _controller;

  List<Product> _filteredProducts() {
    final all = _controller.items;
    if (all.isEmpty) return const [];

    // Filter strictly by visible category name so behaviour is
    // identical whether we navigated from Home or Category list.
    final targetName = widget.categoryName.trim().toLowerCase();
    return all
        .where(
          (p) => p.categories.any(
            (c) => c.name.trim().toLowerCase() == targetName,
          ),
        )
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _controller = Get.find<ProductController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCategoryProducts();
    });
  }

  Future<void> _loadCategoryProducts() async {
    // Always load the full product list; this screen filters
    // locally by category id/name to avoid any backend quirks.
    await _controller.loadItems();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () =>
                Get.rootDelegate.toNamed(AppRoutes.search),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.categoryName,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Obx(() {
                          final products = _filteredProducts();
                          return Text(
                            '(${products.length} Products Found)',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppTheme.textSecondary,
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      final result = await showModalBottomSheet<SortOption>(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(22),
                          ),
                        ),
                        builder: (context) => SortingPage(
                          initial: _currentSort,
                        ),
                      );

                      if (result != null) {
                        _currentSort = result;
                        Get.snackbar(
                          'Sorting applied',
                          result.name,
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.white,
                          colorText: AppTheme.textPrimary,
                          margin: const EdgeInsets.all(12),
                          duration: const Duration(seconds: 2),
                        );
                      }
                    },
                    icon: const Icon(Icons.tune),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 10),
              Expanded(
                child: Obx(() {
                  final products = _filteredProducts();

                  if (_controller.isLoading.value && products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (_controller.errorMessage.value.isNotEmpty &&
                      products.isEmpty) {
                    return Center(
                      child: Text(
                        _controller.errorMessage.value,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.error,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }

                  if (products.isEmpty) {
                    return Center(
                      child: Text(
                        'No products found in this category.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.72,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return _CategoryProductCard(product: product);
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryProductCard extends StatelessWidget {
  const _CategoryProductCard({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.lightSurface,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ProductImage(
                  imageUrl: product.images.isNotEmpty
                      ? product.images.first.src
                      : null,
                  radius: radius,
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(
                    Icons.favorite_border,
                    color: AppTheme.textSecondary,
                    size: 20,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () =>
                          showProductDetailsSheet(context, product: product),
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.goldPrimary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.shopping_bag_outlined,
                              size: 14,
                              color: AppTheme.lightSurface,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Add',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: AppTheme.lightSurface,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: ResponsiveHelper.getResponsivePadding(
                context,
                horizontal: 10,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final currentPrice = double.tryParse(
                            product.price ??
                                product.salePrice ??
                                product.regularPrice ??
                                '0',
                          ) ??
                          0;
                      final oldPrice = double.tryParse(
                        product.regularPrice ?? '',
                      );

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '\$${currentPrice.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: AppTheme.goldPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (oldPrice != null && oldPrice > currentPrice) ...[
                            const SizedBox(width: 6),
                            Text(
                              '\$${oldPrice.toStringAsFixed(2)}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: AppTheme.error,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
