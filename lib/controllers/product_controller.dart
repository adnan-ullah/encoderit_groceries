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
}

