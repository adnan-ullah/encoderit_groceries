import 'dart:convert';

import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  static const _usersKey = 'local_auth_users';

  Future<Map<String, dynamic>> _loadUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_usersKey);
    if (raw == null || raw.isEmpty) return <String, dynamic>{};
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      return <String, dynamic>{};
    } catch (_) {
      return <String, dynamic>{};
    }
  }

  Future<void> _saveUsers(Map<String, dynamic> users) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_usersKey, jsonEncode(users));
  }

  Future<Result<void>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final users = await _loadUsers();
      if (users.containsKey(email)) {
        return Result.failure(
          ApiError(message: 'User already exists for this email'),
        );
      }
      users[email] = <String, dynamic>{
        'name': name,
        'email': email,
        'password': password,
      };
      await _saveUsers(users);
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

    // Local-only auth using stored users until backend is ready.
    try {
      final users = await _loadUsers();
      final user = users[username];
      if (user is Map<String, dynamic>) {
        final storedPassword = user['password'] as String? ?? '';
        if (storedPassword == password) {
          // Optionally set dummy Woo keys if needed.
          return  Result.success(null);
        }
      }
      return Result.failure(
        ApiError(message: 'Invalid username or password'),
      );
    } catch (e, stackTrace) {
      return Result.failure(
        NetworkError.fromException(e, stackTrace),
      );
    }
  }
}

