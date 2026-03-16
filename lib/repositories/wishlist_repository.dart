import 'dart:convert';

import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/wishlist/wishlist_item.dart';

/// WishlistRepository - purely local/offline wishlist using DatabaseService
/// but still extending BaseRepository so it fits the same pattern.
class WishlistRepository extends BaseRepository<WishlistItem> {
  WishlistRepository({
    required super.apiService,
    required super.databaseService,
    required super.syncService,
  }) : super(baseEndpoint: 'wishlist'); // logical key only, no real API

  static const _cacheKey = 'wishlist_all';

  @override
  WishlistItem fromJson(Map<String, dynamic> json) =>
      WishlistItem.fromJson(json);

  /// Load wishlist items from local cache only (no remote API).
  @override
  Future<Result<List<WishlistItem>>> getAll({bool useCache = true}) async {
    try {
      final raw = databaseService.get<String>(_cacheKey);
      if (raw == null || raw.isEmpty) {
        return Result.success(const []);
      }
      final list = (jsonDecode(raw) as List)
          .map(
            (e) => WishlistItem.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList();
      return Result.success(list);
    } catch (e, stackTrace) {
      return Result.failure(
        ApiError(
          message: 'Failed to load wishlist from local cache',
          originalError: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  /// Save the full wishlist list to local cache.
  Future<void> saveAll(List<WishlistItem> items) async {
    await databaseService.save(
      _cacheKey,
      jsonEncode(
        items.map((e) => e.toJson()).toList(),
      ),
    );
  }
}


