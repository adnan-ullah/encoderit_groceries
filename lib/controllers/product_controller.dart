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
    await handleListResult(() => repository.getAll());
  }

  Future<void> loadById(int id) async {
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
    await handleListResult(
      () => repository.getProductsByCategory(categoryId),
    );
  }

  Future<void> loadByBrand(int brandId) async {
    await handleListResult(
      () => repository.getProductsByBrand(brandId),
    );
  }

  Future<void> loadBestSelling() async {
    await handleListResult(
      () => repository.getBestSellingProducts(),
    );
  }

  Future<void> loadFeatured() async {
    await handleListResult(
      () => repository.getFeaturedProducts(),
    );
  }

  Future<void> loadOrdered({
    String orderBy = 'date',
    String order = 'asc',
  }) async {
    await handleListResult(
      () => repository.getProductsOrdered(orderBy: orderBy, order: order),
    );
  }
}

