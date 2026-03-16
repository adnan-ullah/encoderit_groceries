import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart' hide ProductImage;
import '../utils/app_theme.dart';
import '../utils/models/ProductImage.dart';
import 'product_details_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  late final ProductController _productController;

  @override
  void initState() {
    super.initState();
    _productController = Get.find<ProductController>();
    if (_productController.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _productController.loadItems();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.rootDelegate.popRoute();
          },
        ),
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            children: [
              _SearchField(
                controller: _controller,
                onChanged: (_) => setState(() {}),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 12),
              Expanded(
                child: Obx(() {
                  final query = _controller.text.trim().toLowerCase();
                  final allProducts = _productController.items.toList();
                  final List<Product> items = query.isEmpty
                      ? allProducts
                      : allProducts
                          .where(
                            (p) =>
                                p.name
                                    .toLowerCase()
                                    .contains(query) ||
                                (p.shortDescription ?? '')
                                    .toLowerCase()
                                    .contains(query) ||
                                p.categories.any(
                                  (c) => c.name
                                      .toLowerCase()
                                      .contains(query),
                                ),
                          )
                          .toList();

                  final loading =
                      _productController.isLoading.value && items.isEmpty;

                  if (loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (items.isEmpty) {
                    return Center(
                      child: Text(
                        query.isEmpty
                            ? 'No products available.'
                            : 'No products found for \"$query\".',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppTheme.textSecondary),
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
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return _SearchProductCard(product: items[index]);
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

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final radius = ResponsiveHelper.getResponsiveRadius(context, 14);
    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, 48),
      child: Container(
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            icon: Icon(
              Icons.search,
              color: AppTheme.textSecondary,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(
              color: AppTheme.textTertiary,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: const TextStyle(
            color: AppTheme.textPrimary,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class _SearchProductCard extends StatelessWidget {
  const _SearchProductCard({required this.product});

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
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 3),
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
                Positioned(
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
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                              color: Colors.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Add',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    (product.shortDescription ?? '').isNotEmpty
                        ? product.shortDescription!
                        : (product.categories.isNotEmpty
                            ? product.categories.first.name
                            : ''),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.textTertiary,
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

