import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/product/product_model.dart';
import '../utils/api_endpoints.dart';

/// ProductRepository - extends BaseRepository with fromJson for WooCommerce products
class ProductRepository extends BaseRepository<Product> {
  ProductRepository({
    required super.apiService,
    required super.databaseService,
    required super.syncService,
  }) : super(baseEndpoint: ApiEndpoints.products);

  @override
  Product fromJson(Map<String, dynamic> json) => Product.fromJson(json);
}

