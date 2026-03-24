import 'package:encoderit_groceries/pages/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart';
import '../routes/app_pages.dart';
import '../services/app_services.dart';
import '../utils/app_theme.dart';

class OfferDetailsPage extends StatelessWidget {
  const OfferDetailsPage({
    super.key,
    required this.offerTitle,
  });

  final String offerTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (!Get.isRegistered<ProductController>()) {
      Get.put(AppServices.getIt<ProductController>(), permanent: true);
    }
    final controller = Get.find<ProductController>();
    if (!controller.isLoading.value && controller.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.loadItems();
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
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
                          offerTitle == 'Offer' ? 'Flash Sale' : offerTitle,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Obx(() {
                          final products = _flashSaleProducts(controller.items);
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
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 10),
              Expanded(
                child: Obx(() {
                  final products = _flashSaleProducts(controller.items);

                  if (controller.isLoading.value && products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (products.isEmpty) {
                    return Center(
                      child: Text(
                        'No flash sale products available right now.',
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
                      return _OfferProductCard(product: product);
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

  List<Product> _flashSaleProducts(List<Product> all) {
    return all.where((p) => p.onSale == true).take(8).toList();
  }
}

class _OfferProductCard extends StatelessWidget {
  const _OfferProductCard({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);
    final unit = product.categories.isNotEmpty
        ? product.categories.first.name
        : 'Piece';
    final price =
        double.tryParse(product.price ?? product.salePrice ?? product.regularPrice ?? '0') ??
            0;
    final oldPrice = double.tryParse(product.regularPrice ?? '0') ?? 0;

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
                Container(
                  child: _OfferCardImage(
                    imageUrl: product.images.isNotEmpty ? product.images.first.src : null,
                    radius: radius,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: const Icon(
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    unit,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.textTertiary,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppTheme.textPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (oldPrice > price) ...[
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

class _OfferCardImage extends StatelessWidget {
  const _OfferCardImage({
    required this.imageUrl,
    required this.radius,
  });

  final String? imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    );

    if (imageUrl == null || imageUrl!.isEmpty) {
      return Container(
        decoration: BoxDecoration(
          color: AppTheme.lightCard,
          borderRadius: borderRadius,
        ),
        child: const Center(
          child: Icon(
            Icons.image_outlined,
            size: 48,
            color: AppTheme.textTertiary,
          ),
        ),
      );
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/offer_banner_3.png',
        image: imageUrl!,
        fit: BoxFit.cover,
      ),
    );
  }
}

