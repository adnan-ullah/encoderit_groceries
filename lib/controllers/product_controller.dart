import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/product/product_model.dart';
import '../repositories/product_repository.dart';

class ProductController extends BaseListController<Product>
    with BaseControllerMixin<Product> {
  final ProductRepository repository;

  ProductController({
    required this.repository,
  }) {
    loadItems();
  }

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() => repository.getAll());
  }

  Future<void> loadById(int id) async {
    items.clear();
    await handleResult(
      () => repository.getProductById(id),
      onSuccess: (product) {
        items
          ..clear()
          ..add(product);
      },
    );
  }

  Future<void> loadByCategory(int categoryId) async {
    items.clear();
    await handleListResult(
      () => repository.getProductsByCategory(categoryId),
    );
  }

  Future<void> loadByBrand(int brandId) async {
    items.clear();
    await handleListResult(
      () => repository.getProductsByBrand(brandId),
    );
  }

  Future<void> loadBestSelling() async {
    items.clear();
    await handleListResult(
      () => repository.getBestSellingProducts(),
    );
  }

  Future<void> loadFeatured() async {
    items.clear();
    await handleListResult(
      () => repository.getFeaturedProducts(),
    );
  }

  /// Helper: remove duplicate products by id while preserving order.
  List<Product> distinctById(List<Product> products) {
    final seen = <int>{};
    final result = <Product>[];
    for (final p in products) {
      if (seen.add(p.id)) {
        result.add(p);
      }
    }
    return result;
  }

  Future<void> loadOrdered({
    String orderBy = 'date',
    String order = 'asc',
  }) async {
    items.clear();
    await handleListResult(
      () => repository.getProductsOrdered(orderBy: orderBy, order: order),
    );
  }
}

