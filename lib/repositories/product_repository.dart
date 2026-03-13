import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:gems_core/gems_core.dart';

import '../models/product/product_model.dart';
import '../utils/api_endpoints.dart';

/// ProductRepository - extends BaseRepository with fromJson for WooCommerce products
class ProductRepository extends BaseRepository<Product> {
  ProductRepository({
    required super.apiService,
    required super.databaseService,
    required super.syncService,
  }) : super(baseEndpoint: ApiEndpoints.productsBase);

  @override
  Product fromJson(Map<String, dynamic> json) => Product.fromJson(json);

  /// WooCommerce requires consumer_key and consumer_secret on every request.
  String get _productsListEndpoint =>
      '${ApiEndpoints.productsBase}?${ApiEndpoints.productsAuthQuery}';

  @override
  Future<Result<List<Product>>> getAll({bool useCache = true}) async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _productsListEndpoint,
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Product by ID: /wc/v3/products/{id}?auth
  Future<Result<Product>> getProductById(int id, {bool useCache = true}) async {
    try {
      final path =
          '${ApiEndpoints.productsBase}/$id?${ApiEndpoints.productsAuthQuery}';
      final response = await apiService.get<Map<String, dynamic>>(
        path,
        fromJson: (data) => data as Map<String, dynamic>,
      );
      if (response.success && response.data != null) {
        return Result.success(fromJson(response.data!));
      }
      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch product'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Helper to build a filtered products URL with auth.
  String _filteredEndpoint(String query) {
    // Example: /wc/v3/products?category=12&consumer_key=...&consumer_secret=...
    return '${ApiEndpoints.productsBase}?$query&${ApiEndpoints.productsAuthQuery}';
  }

  /// Product by category: /wc/v3/products?category=12&auth
  Future<Result<List<Product>>> getProductsByCategory(int categoryId) async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _filteredEndpoint('category=$categoryId'),
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch by category'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Product by brand: /wc/v3/products?brand=23&auth
  Future<Result<List<Product>>> getProductsByBrand(int brandId) async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _filteredEndpoint('brand=$brandId'),
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch by brand'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Product by best selling: /wc/v3/products?orderby=popularity&auth
  Future<Result<List<Product>>> getBestSellingProducts() async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _filteredEndpoint('orderby=popularity'),
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch best sellers'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Product by featured: /wc/v3/products?featured=true&auth
  Future<Result<List<Product>>> getFeaturedProducts() async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _filteredEndpoint('featured=true'),
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch featured'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }

  /// Product by order options: /wc/v3/products?orderby=date&order=asc&auth
  Future<Result<List<Product>>> getProductsOrdered({
    String orderBy = 'date',
    String order = 'asc',
  }) async {
    try {
      final response = await apiService.get<List<dynamic>>(
        _filteredEndpoint('orderby=$orderBy&order=$order'),
        fromJson: (data) => (data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      if (response.success && response.data != null) {
        return Result.success(response.data! as List<Product>);
      }

      return Result.failure(
        ApiError(message: response.message ?? 'Failed to fetch ordered list'),
      );
    } catch (e, stackTrace) {
      return Result.failure(NetworkError.fromException(e, stackTrace));
    }
  }
}

