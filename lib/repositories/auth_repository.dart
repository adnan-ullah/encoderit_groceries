import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/api_endpoints.dart';

/// Auth: register + login against wp-json/auth/v1/*.
class AuthRepository {
  final ApiService apiService;

  AuthRepository({
    required this.apiService,
  });

  static const _sessionUserIdKey = 'auth_user_id';
  static const _sessionUserEmailKey = 'auth_user_email';
  static const _sessionUsernameKey = 'auth_username';

  Future<Result<void>> signUp({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await apiService.post<Map<String, dynamic>>(
        ApiEndpoints.register,
        data: {
          'username': username,
          'email': email,
          'password': password,
          'confirm_password': confirmPassword,
        },
      );

      if (!response.success) {
        return Result.failure(
          ApiError(message: response.message ?? 'Registration failed'),
        );
      }

      final data = response.data;
      if (data == null) {
        return Result.failure(
          ApiError(message: 'Empty registration response'),
        );
      }

      final bodySuccess = data['success'] == true || data['success'] == 'true';
      if (!bodySuccess) {
        final msg = data['message'] as String? ??
            response.message ??
            'Registration failed';
        return Result.failure(ApiError(message: msg));
      }

      final prefs = await SharedPreferences.getInstance();
      final userId = data['user_id'];
      if (userId != null) {
        await prefs.setString(_sessionUserIdKey, userId.toString());
      }
      if (email.isNotEmpty) {
        await prefs.setString(_sessionUserEmailKey, email);
      }
      if (username.isNotEmpty) {
        await prefs.setString(_sessionUsernameKey, username);
      }

      return  Result.success(null);
    } catch (e, stackTrace) {
      return Result.failure(
        NetworkError.fromException(e, stackTrace),
      );
    }
  }

  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await apiService.post<Map<String, dynamic>>(
        ApiEndpoints.login,
        data: {
          'username': username,
          'email': username,
          'password': password,
        },
      );

      if (!response.success) {
        return Result.failure(
          ApiError(message: response.message ?? 'Login failed'),
        );
      }

      final data = response.data;
      if (data == null) {
        return Result.failure(
          ApiError(message: 'Empty login response'),
        );
      }

      final bodySuccess = data['success'] == true || data['success'] == 'true';
      if (!bodySuccess) {
        final msg = data['message'] as String? ??
            response.message ??
            'Login failed';
        return Result.failure(ApiError(message: msg));
      }

      // Optional session hints for UI (consumer key/secret will come later).
      final prefs = await SharedPreferences.getInstance();
      final userId = data['user_id'];
      final userEmail = data['user_email'] as String?;
      if (userId != null) {
        await prefs.setString(_sessionUserIdKey, userId.toString());
      }
      if (userEmail != null && userEmail.isNotEmpty) {
        await prefs.setString(_sessionUserEmailKey, userEmail);
      }
      if (username.isNotEmpty) {
        await prefs.setString(_sessionUsernameKey, username);
      }

      // WooCommerce keys: keep existing dummy / config for now (skip API fields).

      return  Result.success(null);
    } catch (e, stackTrace) {
      return Result.failure(
        NetworkError.fromException(e, stackTrace),
      );
    }
  }
}

