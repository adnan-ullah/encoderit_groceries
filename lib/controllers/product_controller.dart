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

  /// Load and prepare sections for the Home page using existing API methods.
  /// - Most Popular & Flash Sale: best-selling products
  /// - Trending: featured products
  Future<HomeProductSections> loadHomeSections() async {
    // 1) Best selling -> Most Popular + Flash Sale
    await loadBestSelling();
    final bestSelling = distinctById(items);

    // 2) Featured -> Trending
    await loadFeatured();
    final featured = distinctById(items);

    // 3) Restore default list for other parts of the app
    await loadItems();

    return HomeProductSections(
      mostPopular: bestSelling,
      flashSale: bestSelling,
      trending: featured,
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

class HomeProductSections {
  const HomeProductSections({
    required this.mostPopular,
    required this.trending,
    required this.flashSale,
  });

  final List<Product> mostPopular;
  final List<Product> trending;
  final List<Product> flashSale;
}

