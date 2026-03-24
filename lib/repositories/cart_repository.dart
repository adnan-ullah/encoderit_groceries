import 'dart:convert';

import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/cart_item/cart_item.dart';

/// CartRepository - purely local/offline cart using DatabaseService.
class CartRepository extends BaseRepository<CartItem> {
  CartRepository({
    required super.apiService,
    required super.databaseService,
    required super.syncService,
  }) : super(baseEndpoint: 'cart'); // logical key only

  static const _cacheKeyPrefix = 'cart_all';
  static const _sessionUserIdKey = 'auth_user_id';
  static const _sessionUserEmailKey = 'auth_user_email';

  Future<String> _resolveCacheKey() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString(_sessionUserIdKey)?.trim();
    if (userId != null && userId.isNotEmpty) {
      return '${_cacheKeyPrefix}_$userId';
    }
    final email = prefs.getString(_sessionUserEmailKey)?.trim();
    if (email != null && email.isNotEmpty) {
      return '${_cacheKeyPrefix}_${email.toLowerCase()}';
    }
    return '${_cacheKeyPrefix}_guest';
  }

  @override
  CartItem fromJson(Map<String, dynamic> json) =>
      CartItem.fromJson(json);

  @override
  Future<Result<List<CartItem>>> getAll({bool useCache = true}) async {
    try {
      final cacheKey = await _resolveCacheKey();
      final raw = databaseService.get<String>(cacheKey);
      if (raw == null || raw.isEmpty) {
        return Result.success(const []);
      }
      final list = (jsonDecode(raw) as List)
          .map(
            (e) => CartItem.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();
      return Result.success(list);
    } catch (e, stackTrace) {
      return Result.failure(
        ApiError(
          message: 'Failed to load cart from local cache',
          originalError: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  Future<void> saveAll(List<CartItem> items) async {
    final cacheKey = await _resolveCacheKey();
    await databaseService.save(
      cacheKey,
      jsonEncode(
        items.map((e) => e.toJson()).toList(),
      ),
    );
  }
}

