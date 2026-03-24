import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart';
import '../routes/app_pages.dart';
import '../services/app_services.dart';
import '../utils/app_theme.dart';
import '../widgets/product_grid_card.dart';

class OfferDetailsPage extends StatelessWidget {
  const OfferDetailsPage({
    super.key,
    required this.offerTitle,
  });

  final String offerTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (!Get.isRegistered<ProductController>()) {
      Get.put(AppServices.getIt<ProductController>(), permanent: true);
    }
    final controller = Get.find<ProductController>();
    if (!controller.isLoading.value && controller.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.loadItems();
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            } else {
              Get.rootDelegate.offNamed(AppRoutes.root);
            }
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offerTitle == 'Offer' ? 'Flash Sale' : offerTitle,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Obx(() {
                          final products = _flashSaleProducts(controller.items);
                          return Text(
                            '(${products.length} Products Found)',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppTheme.textSecondary,
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 10),
              Expanded(
                child: Obx(() {
                  final products = _flashSaleProducts(controller.items);

                  if (controller.isLoading.value && products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (products.isEmpty) {
                    return Center(
                      child: Text(
                        'No flash sale products available right now.',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.72,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductGridCard(product: product);
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Product> _flashSaleProducts(List<Product> all) {
    return all.where((p) => p.onSale == true).take(8).toList();
  }
}

