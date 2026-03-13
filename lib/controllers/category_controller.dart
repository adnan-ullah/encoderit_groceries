import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/category/category_model.dart';
import '../models/product/product_model.dart';
import '../repositories/product_repository.dart';

class CategoryController extends BaseListController<Category>
    with BaseControllerMixin<Category> {
  final ProductRepository productRepository;

  CategoryController({
    required this.productRepository,
  });

  @override
  void onReady() {
    super.onReady();
    loadItems();
  }

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() async {
      final productResult = await productRepository.getAll(useCache: true);
      return productResult.map(_buildDistinctCategories);
    });
  }

  List<Category> _buildDistinctCategories(List<Product> products) {
    final seen = <int>{};
    final result = <Category>[];

    for (final p in products) {
      for (final c in p.categories) {
        if (seen.add(c.id)) {
          result.add(
            Category(id: c.id, name: c.name, slug: c.slug),
          );
        }
      }
    }
    return result;
  }
}

