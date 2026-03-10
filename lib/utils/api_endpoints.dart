/// API Endpoints Helper
/// Centralized location for all API base endpoints
/// BaseRepository automatically handles ID paths (e.g., /todos/$id)
class ApiEndpoints {
  static const String todos = '/todos';

  /// WooCommerce auth details (dummy here – treat as token-like).
  /// The base URL should already include the `/wp-json/wc/v3` part via Environment.apiBaseUrl.
  static const String _consumerKey =
      'ck_0cdadeb2f0389f090bcb897fb0f52109d3b8f8b7';
  static const String _consumerSecret =
      'cs_7f766c1eacf557d0a230328a2ead7e354e2ef83d';

  /// Public auth query – can be reused when building filtered endpoints.
  static const String productsAuthQuery =
      'consumer_key=$_consumerKey&consumer_secret=$_consumerSecret';

  /// Base products path (without query).
  static const String productsBase = '/products';

  /// Default products listing endpoint.
  static String get productsList => '$productsBase?$productsAuthQuery';

  static const String carts = '/carts';

  // Add more base endpoints as needed:
  // static const String users = '/users';
  // static const String posts = '/posts';
}
