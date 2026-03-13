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

          return ListView.separated(
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 16,
              vertical: 10,
            ),
            itemCount: categories.length,
            separatorBuilder: (context, index) => Divider(
              height: ResponsiveHelper.getResponsiveHeight(context, 1),
              color: Colors.grey.shade300,
            ),
            itemBuilder: (context, index) {
              final c = categories[index];

              return InkWell(
                onTap: () {
                  debugPrint('Tapped category (CategoryPage): ${c.name}');
                  Get.to(() => CategoryDetailsPage(
                        categoryId: c.id,
                        categoryName: c.name,
                      ));
                },
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
                          c.name,
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

