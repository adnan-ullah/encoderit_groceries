import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'wishlist_item.freezed.dart';
part 'wishlist_item.g.dart';

/// Local wishlist item for dynamic wishlist (encoderit_groceries),
/// following the same freezed/json_serializable pattern as other models.
@freezed
class WishlistItem with _$WishlistItem implements BaseModel {
  const factory WishlistItem({
    required String id,
    int? productId,
    required String name,
    required String unit,
    required double price,
    String? imageUrl,
  }) = _WishlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) =>
      _$WishlistItemFromJson(json);
}
