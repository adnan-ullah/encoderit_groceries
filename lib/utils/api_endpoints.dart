import 'woo_auth_config.dart';

/// API Endpoints Helper
/// Centralized location for all API base endpoints
/// BaseRepository automatically handles ID paths (e.g., /todos/$id)
class ApiEndpoints {
  static const String todos = '/todos';

  /// Auth / login
  /// With apiBaseUrl = https://encoder-staging.site/luxurious-skincare-wp/
  /// this becomes: wp-json/auth/v1/login
  static const String login = 'wp-json/auth/v1/login';

  /// Auth / register
  static const String register = 'wp-json/auth/v1/register';

  /// WooCommerce orders base path.
  static const String ordersBase = 'wp-json/wc/v3/orders';

  /// WooCommerce products base path (without query).
  /// With apiBaseUrl = .../ this becomes: wp-json/wc/v3/products
  static const String productsBase = 'wp-json/wc/v3/products';

  /// Dynamic auth query built from WooAuthConfig (updated after login).
  static String get productsAuthQuery => WooAuthConfig.authQuery;

  static const String carts = '/carts';

  // Add more base endpoints as needed:
  // static const String users = '/users';
  // static const String posts = '/posts';
}
