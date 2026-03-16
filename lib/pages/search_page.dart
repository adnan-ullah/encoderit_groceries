import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/product_controller.dart';
import '../models/product/product_model.dart';
import '../utils/app_theme.dart';
import '../widgets/product_grid_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  late final ProductController _productController;

  @override
  void initState() {
    super.initState();
    _productController = Get.find<ProductController>();
    if (_productController.items.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _productController.loadItems();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.rootDelegate.popRoute();
          },
        ),
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            children: [
              _SearchField(
                controller: _controller,
                onChanged: (_) => setState(() {}),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 12),
              Expanded(
                child: Obx(() {
                  final query = _controller.text.trim().toLowerCase();
                  final allProducts = _productController.items.toList();
                  final List<Product> items = query.isEmpty
                      ? allProducts
                      : allProducts
                          .where(
                            (p) =>
                                p.name
                                    .toLowerCase()
                                    .contains(query) ||
                                (p.shortDescription ?? '')
                                    .toLowerCase()
                                    .contains(query) ||
                                p.categories.any(
                                  (c) => c.name
                                      .toLowerCase()
                                      .contains(query),
                                ),
                          )
                          .toList();

                  final loading =
                      _productController.isLoading.value && items.isEmpty;

                  if (loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (items.isEmpty) {
                    return Center(
                      child: Text(
                        query.isEmpty
                            ? 'No products available.'
                            : 'No products found for \"$query\".',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppTheme.textSecondary),
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
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ProductGridCard(product: items[index]);
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

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final radius = ResponsiveHelper.getResponsiveRadius(context, 14);
    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, 48),
      child: Container(
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            icon: Icon(
              Icons.search,
              color: AppTheme.textSecondary,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(
              color: AppTheme.textTertiary,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: const TextStyle(
            color: AppTheme.textPrimary,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

