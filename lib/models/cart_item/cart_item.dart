import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

/// Local cart line item for dynamic cart/checkout (encoderit_groceries),
/// following the same freezed/json_serializable pattern as other models.
@freezed
class CartItem with _$CartItem implements BaseModel {
  const factory CartItem({
    required String id,
    int? productId,
    required String name,
    required double price,
    double? oldPrice,
    @Default(1) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
