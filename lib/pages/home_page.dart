import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';
import 'package:get/get.dart';

import '../controllers/brand_controller.dart';
import '../controllers/category_controller.dart';
import '../controllers/product_controller.dart';
import '../models/category/category_model.dart';
import '../models/home_models.dart';
import '../models/product/product_model.dart';
import '../routes/app_pages.dart';
import '../services/app_services.dart';
import '../utils/app_theme.dart';
import 'product_details_page.dart';
import 'category_details_page.dart';
import 'brand_details_page.dart';
import '../services/app_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _banner = HomeBanner(
    title: 'Seasonal',
    highlight: 'Beauty Faves',
    description: 'Handpicked essentials for you',
    ctaLabel: 'Shop Now',
    badgeLabel: 'BIG SALE',
  );

  // Static UX scaffolding (icons only) – names now come from API-backed models.
  static const _categoryIcons = <IconData>[
    Icons.eco_outlined,
    Icons.local_grocery_store_outlined,
    Icons.spa_outlined,
    Icons.set_meal_outlined,
    Icons.bakery_dining_outlined,
  ];

  @override
  void initState() {
    super.initState();
    // Ensure categories are loaded for the home "Browse by Category" strip.
    final categoryController = Get.find<CategoryController>();
    if (!categoryController.isLoading.value &&
        categoryController.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        categoryController.loadItems();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final productController = Get.find<ProductController>();
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
                    _buildSectionHeader(context, title: 'Browse by Category'),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    _buildCategoryStrip(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildPromoRow(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildSectionHeader(context, title: 'Most Popular'),
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
              sliver: Obx(
                () => _buildPopularGrid(
                  context,
                  productController.items.toList(),
                ),
              ),
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
                    Obx(
                      () => _buildTrendingStrip(
                        context,
                        productController.items.toList(),
                      ),
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    _buildFlashSaleHeader(context),
                    ResponsiveHelper.getResponsiveSpacing(context, 12),
                    Obx(
                      () => _buildFlashSaleGrid(
                        context,
                        productController.items.toList(),
                      ),
                    ),
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
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: AppTheme.goldPrimary),
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
        image: DecorationImage(
          image: AssetImage('assets/images/banner_2.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
        ),
        gradient: LinearGradient(
          colors: [AppTheme.mintBright, AppTheme.cyanBright],
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
                        style: const TextStyle(fontWeight: FontWeight.w900),
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
        image: DecorationImage(
          image: AssetImage('assets/images/banner_3.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.1),
            BlendMode.darken,
          ),
        ),
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

  Widget _buildSectionHeader(BuildContext context, {required String title}) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
    );
  }

  Widget _buildCategoryStrip(BuildContext context) {
    final controller = Get.find<CategoryController>();
    return Obx(() {
      // Extra safety: ensure we only render unique category names
      final byName = <String, Category>{};
      for (final c in controller.items) {
        final key = c.name.trim().toLowerCase();
        if (key.isNotEmpty) {
          byName[key] = c;
        }
      }
      final categories = byName.values.toList();
      if (categories.isEmpty) {
        return const SizedBox.shrink();
      }

      return SizedBox(
        height: ResponsiveHelper.getResponsiveHeight(context, 90),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) =>
              SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
          itemBuilder: (context, index) {
            final category = categories[index];
            final icon = _categoryIcons[index % _categoryIcons.length];
            return InkWell(
              onTap: () {
                debugPrint('Tapped category (HomePage): ${category.name}');
                Get.to(() => CategoryDetailsPage(
                  categoryId: category.id,
                  categoryName: category.name,
                ));
              },
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
                      child: Icon(icon, color: AppTheme.goldPrimary, size: 20),
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
    });
  }

  Widget _buildPromoRow(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 18);

    Widget buildCard({
      required String image,
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
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.05),
                  BlendMode.darken,
                ),
              ),
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
          image: 'assets/images/offer_banner_3.png',
          title: 'Beauty is\nNow Boarding',
          subtitle: 'Up to 15% Off',
          badge: 'Bring the character',
        ),
        SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        buildCard(
          image: 'assets/images/offer_banner_2.png',
          title: 'Eat Healthy.\nStay Fit.',
          subtitle: 'Up to 20% Off',
          badge: 'Daily essentials',
        ),
      ],
    );
  }

  Widget _buildTrendingStrip(BuildContext context, List<Product> products) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);
    const cardWidth = 160.0;
    const cardHeight = 220.0;

    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, cardHeight),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length.clamp(0, 8),
        separatorBuilder: (_, __) =>
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
        itemBuilder: (context, index) {
          final item = products[index];
          final unit = item.categories.isNotEmpty
              ? item.categories.first.name
              : 'Piece';
          final price =
              double.tryParse(
                item.price ?? item.salePrice ?? item.regularPrice ?? '0',
              ) ??
              0;
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
                        _ProductCardImage(
                          imageUrl: item.images.isNotEmpty
                              ? item.images.first.src
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
                              onTap: () => showProductDetailsSheet(
                                context,
                                product: item,
                              ),
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
                            unit,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: AppTheme.textTertiary,
                            ),
                          ),
                          Text(
                            '\$${price.toStringAsFixed(2)}',
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
          onPressed: () => Get.rootDelegate.toNamed(AppRoutes.offerDetails),
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
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildFlashSaleGrid(BuildContext context, List<Product> products) {
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
      itemCount: products
          .where((p) => p.onSale == true)
          .take(8)
          .toList()
          .length,
      itemBuilder: (context, index) {
        final flashList = products
            .where((p) => p.onSale == true)
            .take(8)
            .toList();
        final product = flashList[index];
        final unit = product.categories.isNotEmpty
            ? product.categories.first.name
            : 'Piece';
        final price =
            double.tryParse(
              product.price ?? product.salePrice ?? product.regularPrice ?? '0',
            ) ??
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
                    _ProductCardImage(
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
                          onTap: () => showProductDetailsSheet(
                            context,
                            product: product,
                          ),
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
                          const SizedBox(width: 6),
                          Text(
                            '\$${oldPrice.toStringAsFixed(2)}',
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
    final controller = Get.find<BrandController>();
    controller.loadItems();

    return Obx(() {
      final brands = controller.items;
      if (brands.isEmpty) {
        return const SizedBox.shrink();
      }

      return SizedBox(
        height: ResponsiveHelper.getResponsiveHeight(context, cardHeight),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: brands.length,
          separatorBuilder: (_, __) =>
              SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
          itemBuilder: (context, index) {
            final brand = brands[index];
            return InkWell(
              onTap: () {
                debugPrint('Tapped brand: ${brand.name}');
                Get.to(() => BrandDetailsPage(
                      brandId: brand.id,
                      brandName: brand.name,
                    ));
              },
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
    });
  }

  SliverGrid _buildPopularGrid(BuildContext context, List<Product> products) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        final popularList = products.take(8).toList();
        final product = popularList[index];
        final subtitle = product.categories.isNotEmpty
            ? product.categories.first.name
            : '';
        final price =
            double.tryParse(
              product.price ?? product.salePrice ?? product.regularPrice ?? '0',
            ) ??
            0;
        final oldPrice = double.tryParse(product.regularPrice ?? '0');
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
                    _ProductCardImage(
                      imageUrl: product.images.isNotEmpty
                          ? product.images.first.src
                          : null,
                      radius: radius,
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        false ? Icons.favorite : Icons.favorite_border,
                        color: false
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
                          onTap: () => showProductDetailsSheet(
                            context,
                            product: product,
                          ),
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
                        subtitle,
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
                            '\$${price.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (oldPrice != null && oldPrice > 0) ...[
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
      }, childCount: products.length.clamp(0, 8)),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.72,
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
