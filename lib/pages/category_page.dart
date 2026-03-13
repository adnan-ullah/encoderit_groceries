import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/category_controller.dart';
import '../models/category/category_model.dart';
import '../utils/app_theme.dart';
import '../routes/app_pages.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  static const _fallbackCategories = <String>[
    'Food',
    'Cleaning Supplies',
    'Personal Care',
    'Health & Wellness',
    'Baby Care',
    'Home & Kitchen',
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            onPressed: () =>
                Get.rootDelegate.toNamed(AppRoutes.search),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 8)),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          final categories = controller.items;
          final bool hasDynamic = categories.isNotEmpty;

          // Use dynamic categories when available, otherwise fall back to static list.
          final int itemCount =
              hasDynamic ? categories.length : _fallbackCategories.length;

          return ListView.separated(
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 16,
              vertical: 10,
            ),
            itemCount: itemCount,
            separatorBuilder: (context, index) => Divider(
              height: ResponsiveHelper.getResponsiveHeight(context, 1),
              color: Colors.grey.shade300,
            ),
            itemBuilder: (context, index) {
              final String title;
              final Category? categoryArg;

              if (hasDynamic) {
                final c = categories[index];
                title = c.name;
                categoryArg = c;
              } else {
                title = _fallbackCategories[index];
                categoryArg = null;
              }

              return InkWell(
                onTap: () => Get.rootDelegate.toNamed(
                  AppRoutes.categoryDetails,
                  arguments: categoryArg?.name ?? title,
                ),
                borderRadius: BorderRadius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 12),
                ),
                child: Padding(
                  padding: ResponsiveHelper.getResponsivePadding(
                    context,
                    vertical: 14,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color: AppTheme.textPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: AppTheme.textSecondary,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

