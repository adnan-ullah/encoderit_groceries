import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../models/product/product_model.dart';
import '../utils/app_theme.dart';

Future<void> showProductDetailsSheet(
  BuildContext context, {
  Product? product,
}) async {
  await showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => ProductDetailsSheet(product: product),
  );
}

class ProductDetailsSheet extends StatefulWidget {
  const ProductDetailsSheet({super.key, this.product});

  final Product? product;

  @override
  State<ProductDetailsSheet> createState() => _ProductDetailsSheetState();
}

class _ProductDetailsSheetState extends State<ProductDetailsSheet> {
  int _quantity = 1;
  static const int _available = 8;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final product = widget.product;

    final name = product?.name ?? 'Overnight Diapers Size 6';
    final unit = product != null && product.categories.isNotEmpty
        ? product.categories.first.name
        : 'Packet';
    final priceValue = double.tryParse(
          product?.price ??
              product?.salePrice ??
              product?.regularPrice ??
              '33.25',
        ) ??
        33.25;
    final oldPriceValue = double.tryParse(
          product?.regularPrice ?? '35.00',
        ) ??
        35.00;
    final description = product?.shortDescription?.isNotEmpty == true
        ? product!.shortDescription!
        : 'No job is too big, no pup is too small! Luvs diapers with new Paw Patrol designs have your back and their butts. Luvs now has up to 12 hours of protection, day and night. Our highly trained paws are at your service to help stop diaper leaks quickly.';

    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ResponsiveHelper.getResponsiveRadius(context, 24)),
          topRight: Radius.circular(ResponsiveHelper.getResponsiveRadius(context, 24)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProductThumbnail(),
                  SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          unit,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Text(
                            '\$${priceValue.toStringAsFixed(2)}',
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: AppTheme.goldPrimary,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                            '\$${oldPriceValue.toStringAsFixed(2)}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: AppTheme.textTertiary,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: AppTheme.textSecondary),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 16),
              Text(
                'Quantity:',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 8),
              Row(
                children: [
                  _QuantityButton(
                    icon: Icons.remove,
                    onTap: () {
                      if (_quantity > 1) {
                        setState(() => _quantity--);
                      }
                    },
                  ),
                  SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
                  Text(
                    '$_quantity',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
                  _QuantityButton(
                    icon: Icons.add,
                    onTap: () {
                      if (_quantity < _available) {
                        setState(() => _quantity++);
                      }
                    },
                  ),
                  const Spacer(),
                  Text(
                    'Available: ($_available) packet',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 16),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: ResponsiveHelper.getResponsiveHeight(context, 48),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.goldPrimary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getResponsiveRadius(context, 28),
                            ),
                          ),
                          elevation: 0,
                        ),
                        icon: const Icon(Icons.shopping_bag_outlined, size: 18),
                        label: const Text('Add To Cart'),
                      ),
                    ),
                  ),
                  SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
                  Expanded(
                    child: SizedBox(
                      height: ResponsiveHelper.getResponsiveHeight(context, 48),
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getResponsiveRadius(context, 28),
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.favorite_border, color: AppTheme.textPrimary),
                        label: Text(
                          'Favorite',
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 16),
              Text(
                description,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                  height: 1.4,
                ),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 18),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final radius = ResponsiveHelper.getResponsiveRadius(context, 12);
    return Container(
      width: ResponsiveHelper.getResponsiveWidth(context, 90),
      height: ResponsiveHelper.getResponsiveHeight(context, 90),
      decoration: BoxDecoration(
        color: AppTheme.lightCard,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Icon(
          Icons.image_outlined,
          size: 40,
          color: AppTheme.textTertiary,
        ),
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        ResponsiveHelper.getResponsiveRadius(context, 20),
      ),
      child: Container(
        width: ResponsiveHelper.getResponsiveWidth(context, 32),
        height: ResponsiveHelper.getResponsiveHeight(context, 32),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getResponsiveRadius(context, 20),
          ),
        ),
        child: Icon(
          icon,
          size: 18,
          color: AppTheme.textPrimary,
        ),
      ),
    );
  }
}

