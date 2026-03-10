/// API Endpoints Helper
/// Centralized location for all API base endpoints
/// BaseRepository automatically handles ID paths (e.g., /todos/$id)
class ApiEndpoints {
  static const String todos = '/todos';

  /// WooCommerce products endpoint, expects consumer key & secret as query params
  /// Example:
  /// /wp-json/wc/v3/products?consumer_key=...&consumer_secret=...
  ///
  /// The base URL should already include the `/wp-json/wc/v3` part via Environment.apiBaseUrl.
  static const String products =
      '/products?consumer_key=ck_0cdadeb2f0389f090bcb897fb0f52109d3b8f8b7&consumer_secret=cs_7f766c1eacf557d0a230328a2ead7e354e2ef83d';
  static const String carts = '/carts';

  // Add more base endpoints as needed:
  // static const String users = '/users';
  // static const String posts = '/posts';
}
