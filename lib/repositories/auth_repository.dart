import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../utils/api_endpoints.dart';
import '../utils/woo_auth_config.dart';

/// Simple auth repository for WooCommerce-style login.
/// It calls /auth/v1/login with {username, password} and
/// extracts consumer key/secret from the response, then updates WooAuthConfig.
class AuthRepository {
  final ApiService apiService;

  AuthRepository({
    required this.apiService,
  });

  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    // TODO: Restore real implementation when backend is ready.
    //
    // Original business logic (kept for future use):
    //
    // try {
    //   final response = await apiService.post<Map<String, dynamic>>(
    //     ApiEndpoints.login,
    //     data: {
    //       'username': username,
    //       'password': password,
    //     },
    //   );
    //
    //   if (response.success && response.data != null) {
    //     final data = response.data!;
    //
    //     final key = data['consumer_key'] as String?;
    //     final secret = data['consumer_secret'] as String?;
    //
    //     if (key == null || secret == null) {
    //       return Result.failure(
    //         ApiError(message: 'Missing consumer key/secret in response'),
    //       );
    //     }
    //
    //     // Update global Woo auth config for the app lifetime
    //     WooAuthConfig.consumerKey = key;
    //     WooAuthConfig.consumerSecret = secret;
    //
    //     return const Result.success(null);
    //   }
    //
    //   return Result.failure(
    //     ApiError(message: response.message ?? 'Login failed'),
    //   );
    // } catch (e, stackTrace) {
    //   return Result.failure(
    //     NetworkError.fromException(e, stackTrace),
    //   );
    // }

    // Temporary behavior while auth API is not ready:
    // - Skip real network call
    // - Keep using whatever keys are currently in WooAuthConfig
    // - Always treat login as success so the flow can be tested
    return  Result.success(null);
  }
}

