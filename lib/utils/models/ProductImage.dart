
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
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
