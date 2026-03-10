import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../models/home_models.dart';
import '../utils/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const _banner = HomeBanner(
    title: 'Seasonal',
    highlight: 'Beauty Faves',
    description: 'Handpicked essentials for you',
    ctaLabel: 'Shop Now',
    badgeLabel: 'BIG SALE',
  );

  static const _categories = <HomeCategory>[
    HomeCategory(name: 'Fresh Vegetables', icon: Icons.eco_outlined),
    HomeCategory(name: 'Fresh Fruits', icon: Icons.local_grocery_store_outlined),
    HomeCategory(name: 'Nuts & Dry Fruits', icon: Icons.spa_outlined),
    HomeCategory(name: 'Chicken & Meat', icon: Icons.set_meal_outlined),
    HomeCategory(name: 'Bakery', icon: Icons.bakery_dining_outlined),
  ];

  static const _popularProducts = <PopularProduct>[
    PopularProduct(
      name: 'Organic Baby Diapers',
      subtitle: 'Size 3 • 54 pcs',
      price: 18.99,
      oldPrice: 24.99,
      isFavorite: true,
    ),
    PopularProduct(
      name: 'Fresh White Lilies',
      subtitle: 'Bouquet • 12 stems',
      price: 12.49,
    ),
    PopularProduct(
      name: 'Almond & Berry Mix',
      subtitle: '500g • Premium Pack',
      price: 9.99,
      oldPrice: 13.49,
    ),
    PopularProduct(
      name: 'Whole Wheat Bread',
      subtitle: 'Healthy Bakery',
      price: 3.29,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBanner(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildSectionHeader(
                      context,
                      title: 'Browse by Category',
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    _buildCategoryStrip(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildPromoRow(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildSectionHeader(
                      context,
                      title: 'Most Popular',
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: ResponsiveHelper.getResponsivePadding(
                context,
                horizontal: 16,
                vertical: 8,
              ),
              sliver: _buildPopularGrid(context),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 80),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: ResponsiveHelper.getResponsiveWidth(context, 16),
      title: Text(
        'StoreKing',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppTheme.goldPrimary,
            ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
      ],
    );
  }

  Widget _buildBanner(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF73F5A9),
            Color(0xFF37D7F7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getResponsiveRadius(context, 20),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _banner.badgeLabel,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 12),
                RichText(
                  text: TextSpan(
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(text: '${_banner.title} '),
                      TextSpan(
                        text: _banner.highlight,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 8),
                Text(
                  _banner.description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green.shade700,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    _banner.ctaLabel,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: Colors.green.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
          Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 90),
            height: ResponsiveHelper.getResponsiveHeight(context, 120),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.85),
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 18),
              ),
            ),
            child: const Icon(
              Icons.local_mall_outlined,
              size: 46,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(
    BuildContext context, {
    required String title,
  }) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildCategoryStrip(BuildContext context) {
    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, 90),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        separatorBuilder: (_, __) =>
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        itemBuilder: (context, index) {
          final category = _categories[index];
          return Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 120),
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 12,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: AppTheme.darkSurface,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppTheme.goldPrimary.withOpacity(0.15),
                  child: Icon(
                    category.icon,
                    color: AppTheme.goldPrimary,
                    size: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  category.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromoRow(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 18);

    Widget buildCard({
      required Color background,
      required String title,
      required String subtitle,
      required String badge,
    }) {
      return Expanded(
        child: Container(
          height: ResponsiveHelper.getResponsiveHeight(context, 120),
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 12,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                badge,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Row(
      children: [
        buildCard(
          background: const Color(0xFFFCE4EC),
          title: 'Beauty is\nNow Boarding',
          subtitle: 'Up to 15% Off',
          badge: 'Bring the character',
        ),
        SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        buildCard(
          background: const Color(0xFFFFF3E0),
          title: 'Eat Healthy.\nStay Fit.',
          subtitle: 'Up to 20% Off',
          badge: 'Daily essentials',
        ),
      ],
    );
  }

  SliverGrid _buildPopularGrid(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 18);

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final product = _popularProducts[index];
          return Container(
            decoration: BoxDecoration(
              color: AppTheme.darkSurface,
              borderRadius: BorderRadius.circular(radius),
            ),
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 12,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.goldPrimary.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Popular',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: AppTheme.goldPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Icon(
                      product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: product.isFavorite
                          ? AppTheme.goldSecondary
                          : AppTheme.textSecondary,
                      size: 18,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: AppTheme.goldPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (product.oldPrice != null) ...[
                      const SizedBox(width: 6),
                      Text(
                        '\$${product.oldPrice!.toStringAsFixed(2)}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppTheme.textTertiary,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                    const Spacer(),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppTheme.goldPrimary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: AppTheme.darkBackground,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        childCount: _popularProducts.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.78,
      ),
    );
  }
}

