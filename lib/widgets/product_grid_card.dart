import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../models/product/product_model.dart';
import '../utils/app_theme.dart';
import '../controllers/wishlist_controller.dart';
import '../services/app_services.dart';
import '../pages/product_details_page.dart';

class ProductGridCard extends StatelessWidget {
  const ProductGridCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<WishlistController>()) {
      Get.put(AppServices.getIt<WishlistController>(), permanent: true);
    }
    final wishlist = Get.find<WishlistController>();
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    final unit = product.categories.isNotEmpty
        ? product.categories.first.name
        : 'Piece';
    final currentPrice = double.tryParse(
          product.price ??
              product.salePrice ??
              product.regularPrice ??
              '0',
        ) ??
        0;
    final oldPrice =
        double.tryParse(product.regularPrice ?? '');

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.lightSurface,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Colors.black.withOpacity(0.04)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 8),
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
                _ProductCardImage(
                  imageUrl: product.images.isNotEmpty
                      ? product.images.first.src
                      : null,
                  radius: radius,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Obx(() {
                    final isFavorite =
                        wishlist.isInWishlist(product.id);
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => wishlist.toggleProduct(product),
                        borderRadius: BorderRadius.circular(14),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: AppTheme.lightBackground,
                          child: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorite
                                ? AppTheme.goldSecondary
                                : AppTheme.textSecondary,
                            size: 16,
                          ),
                        ),
                      ),
                    );
                  }),
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
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.goldPrimary,
                          borderRadius: BorderRadius.circular(18),
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
                  Text(
                    unit,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.textTertiary,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '\$${currentPrice.toStringAsFixed(2)}',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppTheme.goldPrimary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      if (oldPrice != null && oldPrice > currentPrice) ...[
                        const SizedBox(width: 6),
                        Text(
                          '\$${oldPrice.toStringAsFixed(2)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.textTertiary,
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

class _ProductCardImage extends StatelessWidget {
  const _ProductCardImage({
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

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppTheme.lightCard,
        child: imageUrl == null || imageUrl!.isEmpty
            ? const Center(
                child: Icon(
                  Icons.image_outlined,
                  size: 48,
                  color: AppTheme.textTertiary,
                ),
              )
            : FadeInImage.assetNetwork(
                placeholder: 'assets/images/offer_banner_3.png',
                image: imageUrl!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}

