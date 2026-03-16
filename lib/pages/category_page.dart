import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/category_controller.dart';
import '../models/category/category_model.dart';
import '../utils/app_theme.dart';
import '../routes/app_pages.dart';
import 'category_details_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();

    if (!controller.isLoading.value && controller.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.loadItems();
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            onPressed: () =>
                Get.rootDelegate.toNamed(AppRoutes.search),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          // Extra safety: ensure we only render unique category names
          final byName = <String, Category>{};
          for (final c in controller.items) {
            final key = c.name.trim().toLowerCase();
            if (key.isNotEmpty) {
              byName[key] = c;
            }
          }
          final categories = byName.values.toList();

          if (controller.isLoading.value && categories.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (categories.isEmpty) {
            return Center(
              child: Text(
                'No categories found.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
              ),
            );
          }

          return ListView.builder(
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 16,
              vertical: 16,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final c = categories[index];
              return Padding(
                padding: EdgeInsets.only(
                  bottom: ResponsiveHelper.getResponsiveHeight(context, 12),
                ),
                child: _CategoryTile(category: c, index: index),
              );
            },
          );
        }),
      ),
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile({
    required this.category,
    required this.index,
  });

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 16);

    // Rotate through a soft color palette to keep the list lively.
    const colors = <Color>[
      AppTheme.cyanBright,
      AppTheme.mintBright,
      AppTheme.skyLight,
      AppTheme.seafoam,
      AppTheme.goldPrimary,
    ];
    final base = colors[index % colors.length];

    return InkWell(
      onTap: () {
        debugPrint('Tapped category (CategoryPage): ${category.name}');
        Get.to(() => CategoryDetailsPage(
              categoryId: category.id,
              categoryName: category.name,
            ));
      },
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              base.withOpacity(0.14),
              base.withOpacity(0.04),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: base.withOpacity(0.35),
            width: 0.6,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 14,
          vertical: 14,
        ),
        child: Row(
          children: [
            // Leading badge with first letter
            Container(
              width: ResponsiveHelper.getResponsiveWidth(context, 40),
              height: ResponsiveHelper.getResponsiveHeight(context, 40),
              decoration: BoxDecoration(
                color: base.withOpacity(0.18),
                borderRadius: BorderRadius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 12),
                ),
              ),
              child: Center(
                child: Text(
                  category.name.isNotEmpty
                      ? category.name[0].toUpperCase()
                      : '?',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: base,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ResponsiveHelper.getResponsiveWidth(context, 12),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getResponsiveHeight(context, 4),
                  ),
                  Text(
                    'Tap to explore items',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ResponsiveHelper.getResponsiveWidth(context, 8),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getResponsiveWidth(context, 10),
                vertical: ResponsiveHelper.getResponsiveHeight(context, 6),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.chevron_right,
                    size: 18,
                    color: base,
                  ),
                  SizedBox(
                    width: ResponsiveHelper.getResponsiveWidth(context, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

