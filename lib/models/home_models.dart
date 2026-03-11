import 'package:flutter/material.dart';

/// Dummy models used to power the home page UI.
/// These are simple value objects and can later be
/// replaced or hydrated from real APIs.

class HomeBanner {
  const HomeBanner({
    required this.title,
    required this.highlight,
    required this.description,
    required this.ctaLabel,
    required this.badgeLabel,
  });

  final String title;
  final String highlight;
  final String description;
  final String ctaLabel;
  final String badgeLabel;
}

class HomeCategory {
  const HomeCategory({
    required this.name,
    required this.icon,
  });

  final String name;
  final IconData icon;
}

class PopularProduct {
  const PopularProduct({
    required this.name,
    required this.subtitle,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });

  final String name;
  final String subtitle;
  final double price;
  final double? oldPrice;
  final bool isFavorite;
}

/// Dummy model for Trending Items horizontal list.
class TrendingItem {
  const TrendingItem({
    required this.name,
    required this.unit,
    required this.price,
    this.isFavorite = false,
  });

  final String name;
  final String unit;
  final double price;
  final bool isFavorite;
}

/// Dummy model for Flash Sale grid (name, unit, current price, original price).
class FlashSaleProduct {
  const FlashSaleProduct({
    required this.name,
    required this.unit,
    required this.price,
    required this.oldPrice,
    this.isFavorite = false,
  });

  final String name;
  final String unit;
  final double price;
  final double oldPrice;
  final bool isFavorite;
}

/// Dummy model for Popular Brands horizontal list.
class PopularBrand {
  const PopularBrand({required this.name});

  final String name;
}

/// Dummy model for Wishlist page.
class WishlistProduct {
  const WishlistProduct({
    required this.name,
    required this.unit,
    required this.price,
    this.isFavorite = true,
  });

  final String name;
  final String unit;
  final double price;
  final bool isFavorite;
}

/// Dummy model for category details product grid.
class CategoryDetailProduct {
  const CategoryDetailProduct({
    required this.name,
    required this.price,
    required this.oldPrice,
    this.isFavorite = false,
  });

  final String name;
  final double price;
  final double? oldPrice;
  final bool isFavorite;
}

/// Dummy model for offer details product grid.
class OfferDetailProduct {
  const OfferDetailProduct({
    required this.name,
    required this.price,
    this.oldPrice,
    this.isFavorite = true,
  });

  final String name;
  final double price;
  final double? oldPrice;
  final bool isFavorite;
}

