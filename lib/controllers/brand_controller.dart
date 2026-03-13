import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/brand/brand_model.dart';
import '../models/product/product_model.dart';
import '../repositories/product_repository.dart';

class BrandController extends BaseListController<Brand>
    with BaseControllerMixin<Brand> {
  final ProductRepository productRepository;

  BrandController({
    required this.productRepository,
  });

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() async {
      final productResult = await productRepository.getAll(useCache: true);
      return productResult.map(_buildDistinctBrands);
    });
  }

  List<Brand> _buildDistinctBrands(List<Product> products) {
    final seen = <int>{};
    final result = <Brand>[];

    for (final p in products) {
      for (final b in p.brands) {
        if (seen.add(b.id)) {
          result.add(
            Brand(id: b.id, name: b.name, slug: b.slug),
          );
        }
      }
    }
    return result;
  }
}

