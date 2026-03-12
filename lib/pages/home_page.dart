import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../models/home_models.dart';
import '../routes/app_pages.dart';
import '../utils/app_theme.dart';
import 'product_details_page.dart';

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

  static const _trendingItems = <TrendingItem>[
    TrendingItem(
      name: '12 Piece Kitchen Set Plastic',
      unit: 'Piece',
      price: 330.00,
      isFavorite: false,
    ),
    TrendingItem(
      name: 'Super Food Supplement',
      unit: 'Piece',
      price: 380.00,
      isFavorite: true,
    ),
    TrendingItem(
      name: 'Organic Honey Jar',
      unit: 'Piece',
      price: 12.99,
    ),
    TrendingItem(
      name: 'Premium Olive Oil',
      unit: 'Bottle',
      price: 24.50,
    ),
  ];

  static const _flashSaleProducts = <FlashSaleProduct>[
    FlashSaleProduct(
      name: 'Mainstays 2 QT Slow Cooker',
      unit: 'Piece',
      price: 270.00,
      oldPrice: 450.00,
      isFavorite: false,
    ),
    FlashSaleProduct(
      name: '18 Piece Non-stick Cookware',
      unit: 'Piece',
      price: 308.00,
      oldPrice: 440.00,
      isFavorite: true,
    ),
    FlashSaleProduct(
      name: 'New Baby Boy Essentials',
      unit: 'Packet',
      price: 43.20,
      oldPrice: 45.00,
      isFavorite: false,
    ),
    FlashSaleProduct(
      name: 'Silicone Material Newborn Essentials',
      unit: 'Packet',
      price: 42.75,
      oldPrice: 45.00,
      isFavorite: false,
    ),
  ];

  static const _popularBrands = <PopularBrand>[
    PopularBrand(name: 'Dove'),
    PopularBrand(name: 'Great Value'),
    PopularBrand(name: 'Nature Valley'),
    PopularBrand(name: "Johnson's"),
    PopularBrand(name: 'Colgate'),
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
              child: Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 20,
                ),
                child: _buildGroceryDeliveryBanner(context),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(context, title: 'Trending Items'),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    _buildTrendingStrip(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildFlashSaleHeader(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    _buildFlashSaleGrid(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildSectionHeader(context, title: 'Popular Brands'),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    _buildPopularBrandsStrip(context),
                  ],
                ),
              ),
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
        'Encoder Groceries',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppTheme.goldPrimary,
            ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => Get.rootDelegate.toNamed(AppRoutes.search),
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
        gradient: LinearGradient(
          colors: [
            AppTheme.mintBright,
            AppTheme.cyanBright,
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
                      color: AppTheme.tealDark,
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
                    foregroundColor: AppTheme.tealDark,
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
                      color: AppTheme.tealDark,
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
              color: AppTheme.cyanPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGroceryDeliveryBanner(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 20);

    return Container(
      width: double.infinity,
      height: ResponsiveHelper.getResponsiveHeight(context, 140),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey.shade400,
                          Colors.grey.shade500,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Icon(
                      Icons.storefront_outlined,
                      size: 56,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'LEADER',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.cyanPale,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Grocery Delivery',
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: AppTheme.tealDeep,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    Material(
                      color: Colors.transparent,
                    child: InkWell(
                      onTap: () => showProductDetailsSheet(context),
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.cyanPrimary,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '20% OFF',
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
          return InkWell(
            onTap: () => Get.rootDelegate.toNamed(
              AppRoutes.categoryDetails,
              arguments: category,
            ),
            child: Container(
              width: ResponsiveHelper.getResponsiveWidth(context, 120),
              padding: ResponsiveHelper.getResponsivePadding(
                context,
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: AppTheme.lightSurface,
                borderRadius: BorderRadius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
        child: InkWell(
          onTap: () => Get.rootDelegate.toNamed(
            AppRoutes.offerDetails,
            arguments: title.replaceAll('\n', ' '),
          ),
          borderRadius: BorderRadius.circular(radius),
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
        ),
      );
    }

    return Row(
      children: [
        buildCard(
          background: AppTheme.mintPale,
          title: 'Beauty is\nNow Boarding',
          subtitle: 'Up to 15% Off',
          badge: 'Bring the character',
        ),
        SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        buildCard(
          background: AppTheme.cyanPale,
          title: 'Eat Healthy.\nStay Fit.',
          subtitle: 'Up to 20% Off',
          badge: 'Daily essentials',
        ),
      ],
    );
  }

  Widget _buildTrendingStrip(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);
    const cardWidth = 160.0;
    const cardHeight = 220.0;

    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, cardHeight),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _trendingItems.length,
        separatorBuilder: (_, __) =>
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        itemBuilder: (context, index) {
          final item = _trendingItems[index];
          return SizedBox(
            width: ResponsiveHelper.getResponsiveWidth(context, cardWidth),
            child: Container(
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
                          decoration: BoxDecoration(
                            color: AppTheme.lightCard,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(radius),
                              topRight: Radius.circular(radius),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.image_outlined,
                              size: 48,
                              color: AppTheme.textTertiary,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Icon(
                            item.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: item.isFavorite
                                ? AppTheme.goldSecondary
                                : AppTheme.textSecondary,
                            size: 20,
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => showProductDetailsSheet(context),
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
                                      style: theme.textTheme.labelSmall
                                          ?.copyWith(
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
                            item.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            item.unit,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: AppTheme.textTertiary,
                            ),
                          ),
                          Text(
                            '\$${item.price.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: AppTheme.goldPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFlashSaleHeader(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Flash Sale',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          onPressed: () => Get.rootDelegate.toNamed(
        AppRoutes.offerDetails,
        ),
          style: TextButton.styleFrom(
            backgroundColor: AppTheme.goldPrimary,
            foregroundColor: AppTheme.lightSurface,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Text(
            'See All',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFlashSaleGrid(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.72,
      ),
      itemCount: _flashSaleProducts.length,
      itemBuilder: (context, index) {
        final product = _flashSaleProducts[index];
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
                      decoration: BoxDecoration(
                        color: AppTheme.lightCard,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          topRight: Radius.circular(radius),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 48,
                          color: AppTheme.textTertiary,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        product.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: product.isFavorite
                            ? AppTheme.goldSecondary
                            : AppTheme.textSecondary,
                        size: 20,
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Material(
                        color: Colors.transparent,
                    child: InkWell(
                      onTap: () => showProductDetailsSheet(context),
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
                      Text(
                        product.unit,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: AppTheme.textTertiary,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '\$${product.price.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '\$${product.oldPrice.toStringAsFixed(2)}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppTheme.error,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPopularBrandsStrip(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);
    const cardWidth = 110.0;
    const cardHeight = 100.0;

    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, cardHeight),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _popularBrands.length,
        separatorBuilder: (_, __) =>
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        itemBuilder: (context, index) {
          final brand = _popularBrands[index];
          return InkWell(
            onTap: () => Get.rootDelegate.toNamed(
              AppRoutes.categoryDetails,
              arguments: brand,
            ),
            child: SizedBox(
              width: ResponsiveHelper.getResponsiveWidth(context, cardWidth),
              child: Container(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 12,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.lightSurface,
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: AppTheme.goldPrimary.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              brand.name.isNotEmpty
                                  ? brand.name.substring(0, 1).toUpperCase()
                                  : '?',
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: AppTheme.goldPrimary,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      brand.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppTheme.textPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  SliverGrid _buildPopularGrid(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final product = _popularProducts[index];
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
                        decoration: BoxDecoration(
                          color: AppTheme.lightCard,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius),
                            topRight: Radius.circular(radius),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.image_outlined,
                            size: 48,
                            color: AppTheme.textTertiary,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          product.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: product.isFavorite
                              ? AppTheme.goldSecondary
                              : AppTheme.textSecondary,
                          size: 20,
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => showProductDetailsSheet(context),
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
                                    style: theme.textTheme.labelSmall
                                        ?.copyWith(
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
                          product.subtitle,
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
                              '\$${product.price.toStringAsFixed(2)}',
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: AppTheme.textPrimary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (product.oldPrice != null) ...[
                              const SizedBox(width: 6),
                              Text(
                                '\$${product.oldPrice!.toStringAsFixed(2)}',
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
        },
        childCount: _popularProducts.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.72,
      ),
    );
  }
}

