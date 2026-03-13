class WooAuthConfig {
  /// WooCommerce API credentials. For now fixed; after auth is ready
  /// these will be set dynamically from the login API response.
  static String consumerKey =
      'ck_0cdadeb2f0389f090bcb897fb0f52109d3b8f8b7';
  static String consumerSecret =
      'cs_7f766c1eacf557d0a230328a2ead7e354e2ef83d';

  static String get authQuery =>
      'consumer_key=$consumerKey&consumer_secret=$consumerSecret';
}

