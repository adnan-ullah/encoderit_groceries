class WooAuthConfig {
  /// WooCommerce API credentials. For now fixed; after auth is ready
  /// these will be set dynamically from the login API response.
  static String consumerKey =
      'ck_1cd2d74318be5bf0775a0896c8b3b3f4e2e2cedb';
  static String consumerSecret =
      'cs_abcbf70b6248116ff2ac40cf2fb12a2eeaefaf19';

  static String get authQuery =>
      'consumer_key=$consumerKey&consumer_secret=$consumerSecret';
}

