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

