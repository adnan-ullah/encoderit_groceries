import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart';
import '../utils/app_theme.dart';
import '../widgets/product_grid_card.dart';

class BrandDetailsPage extends StatefulWidget {
  const BrandDetailsPage({
    super.key,
    required this.brandName,
    this.brandId,
  });

  final String brandName;
  final int? brandId;

  @override
  State<BrandDetailsPage> createState() => _BrandDetailsPageState();
}

class _BrandDetailsPageState extends State<BrandDetailsPage> {
  late final ProductController _controller;

  @override
  void initState() {
    super.initState();
    _controller = Get.find<ProductController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadBrandProducts();
    });
  }

  Future<void> _loadBrandProducts() async {
    await _controller.loadItems();
  }

  List<Product> _filteredProducts() {
    final all = _controller.items;
    if (all.isEmpty) return const [];

    final targetName = widget.brandName.trim().toLowerCase();
    return all
        .where(
          (p) => p.brands.any(
            (b) => b.name.trim().toLowerCase() == targetName,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
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
                          widget.brandName,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: AppTheme.textPrimary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Obx(() {
                          final products = _filteredProducts();
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
                  final products = _filteredProducts();

                  if (_controller.isLoading.value && products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (_controller.errorMessage.value.isNotEmpty &&
                      products.isEmpty) {
                    return Center(
                      child: Text(
                        _controller.errorMessage.value,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.error,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }

                  if (products.isEmpty) {
                    return Center(
                      child: Text(
                        'No products found for this brand.',
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
}

