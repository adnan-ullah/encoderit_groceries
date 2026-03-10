import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product implements BaseModel {
  const factory Product({
    required int id,
    required String name,
    required String slug,
    String? permalink,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_created_gmt') String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'date_modified_gmt') String? dateModifiedGmt,
    String? type,
    String? status,
    bool? featured,
    @JsonKey(name: 'catalog_visibility') String? catalogVisibility,
    String? description,
    @JsonKey(name: 'short_description') String? shortDescription,
    String? sku,
    String? price,
    @JsonKey(name: 'regular_price') String? regularPrice,
    @JsonKey(name: 'sale_price') String? salePrice,
    @JsonKey(name: 'on_sale') bool? onSale,
    bool? purchasable,
    @JsonKey(name: 'total_sales') int? totalSales,
    bool? virtual,
    bool? downloadable,
    @Default(<ProductDownload>[]) List<ProductDownload> downloads,
    @JsonKey(name: 'download_limit') int? downloadLimit,
    @JsonKey(name: 'download_expiry') int? downloadExpiry,
    @JsonKey(name: 'external_url') String? externalUrl,
    @JsonKey(name: 'button_text') String? buttonText,
    @JsonKey(name: 'tax_status') String? taxStatus,
    @JsonKey(name: 'tax_class') String? taxClass,
    @JsonKey(name: 'manage_stock') bool? manageStock,
    @JsonKey(name: 'stock_quantity') int? stockQuantity,
    String? backorders,
    @JsonKey(name: 'backorders_allowed') bool? backordersAllowed,
    bool? backordered,
    @JsonKey(name: 'low_stock_amount') int? lowStockAmount,
    @JsonKey(name: 'sold_individually') bool? soldIndividually,
    String? weight,
    @Default(ProductDimensions()) ProductDimensions dimensions,
    @JsonKey(name: 'shipping_required') bool? shippingRequired,
    @JsonKey(name: 'shipping_taxable') bool? shippingTaxable,
    @JsonKey(name: 'shipping_class') String? shippingClass,
    @JsonKey(name: 'shipping_class_id') int? shippingClassId,
    @JsonKey(name: 'reviews_allowed') bool? reviewsAllowed,
    @JsonKey(name: 'average_rating') String? averageRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    @JsonKey(name: 'upsell_ids') @Default(<int>[]) List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') @Default(<int>[]) List<int> crossSellIds,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'purchase_note') String? purchaseNote,
    @Default(<ProductCategory>[]) List<ProductCategory> categories,
    @Default(<ProductCategory>[]) List<ProductCategory> brands,
    @Default(<ProductTag>[]) List<ProductTag> tags,
    @Default(<ProductImage>[]) List<ProductImage> images,
    @Default(<ProductAttribute>[]) List<ProductAttribute> attributes,
    @JsonKey(name: 'default_attributes')
    @Default(<ProductDefaultAttribute>[])
    List<ProductDefaultAttribute> defaultAttributes,
    @Default(<int>[]) List<int> variations,
    @JsonKey(name: 'grouped_products') @Default(<int>[]) List<int> groupedProducts,
    @JsonKey(name: 'menu_order') int? menuOrder,
    @JsonKey(name: 'price_html') String? priceHtml,
    @JsonKey(name: 'related_ids') @Default(<int>[]) List<int> relatedIds,
    @JsonKey(name: 'meta_data') @Default(<ProductMetaData>[]) List<ProductMetaData> metaData,
    @JsonKey(name: 'stock_status') String? stockStatus,
    @JsonKey(name: 'has_options') bool? hasOptions,
    @JsonKey(name: 'post_password') String? postPassword,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductDimensions with _$ProductDimensions {
  const factory ProductDimensions({
    String? length,
    String? width,
    String? height,
  }) = _ProductDimensions;

  factory ProductDimensions.fromJson(Map<String, dynamic> json) =>
      _$ProductDimensionsFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required int id,
    required String name,
    required String slug,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class ProductTag with _$ProductTag {
  const factory ProductTag({
    required int id,
    required String name,
    required String slug,
  }) = _ProductTag;

  factory ProductTag.fromJson(Map<String, dynamic> json) =>
      _$ProductTagFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    required int id,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_created_gmt') String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'date_modified_gmt') String? dateModifiedGmt,
    required String src,
    required String name,
    String? alt,
    String? srcset,
    String? sizes,
    String? thumbnail,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

@freezed
class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    required int id,
    required String name,
    @Default(<String>[]) List<String> options,
  }) = _ProductAttribute;

  factory ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeFromJson(json);
}

@freezed
class ProductDefaultAttribute with _$ProductDefaultAttribute {
  const factory ProductDefaultAttribute({
    required int id,
    required String name,
    String? option,
  }) = _ProductDefaultAttribute;

  factory ProductDefaultAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductDefaultAttributeFromJson(json);
}

@freezed
class ProductDownload with _$ProductDownload {
  const factory ProductDownload({
    String? id,
    String? name,
    String? file,
  }) = _ProductDownload;

  factory ProductDownload.fromJson(Map<String, dynamic> json) =>
      _$ProductDownloadFromJson(json);
}

@freezed
class ProductMetaData with _$ProductMetaData {
  const factory ProductMetaData({
    required int id,
    required String key,
    dynamic value,
  }) = _ProductMetaData;

  factory ProductMetaData.fromJson(Map<String, dynamic> json) =>
      _$ProductMetaDataFromJson(json);
}

