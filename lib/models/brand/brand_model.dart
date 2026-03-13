import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class Brand with _$Brand implements BaseModel {
  const factory Brand({
    required int id,
    required String name,
    required String slug,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) =>
      _$BrandFromJson(json);
}

