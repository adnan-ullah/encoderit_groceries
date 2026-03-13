import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';


@freezed
class Category with _$Category implements BaseModel {
  const factory Category({
    required int id,
    required String name,
    required String slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

