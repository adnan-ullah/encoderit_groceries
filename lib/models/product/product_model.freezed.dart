// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified')
  String? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalog_visibility')
  String? get catalogVisibility => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_price')
  String? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_sale')
  bool? get onSale => throw _privateConstructorUsedError;
  bool? get purchasable => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sales')
  int? get totalSales => throw _privateConstructorUsedError;
  bool? get virtual => throw _privateConstructorUsedError;
  bool? get downloadable => throw _privateConstructorUsedError;
  List<ProductDownload> get downloads => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_limit')
  int? get downloadLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_expiry')
  int? get downloadExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_url')
  String? get externalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_text')
  String? get buttonText => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_status')
  String? get taxStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_class')
  String? get taxClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'manage_stock')
  bool? get manageStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_quantity')
  int? get stockQuantity => throw _privateConstructorUsedError;
  String? get backorders => throw _privateConstructorUsedError;
  @JsonKey(name: 'backorders_allowed')
  bool? get backordersAllowed => throw _privateConstructorUsedError;
  bool? get backordered => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_stock_amount')
  int? get lowStockAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_individually')
  bool? get soldIndividually => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  ProductDimensions get dimensions => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_required')
  bool? get shippingRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_taxable')
  bool? get shippingTaxable => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_class')
  String? get shippingClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_class_id')
  int? get shippingClassId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_allowed')
  bool? get reviewsAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  String? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'upsell_ids')
  List<int> get upsellIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'cross_sell_ids')
  List<int> get crossSellIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_note')
  String? get purchaseNote => throw _privateConstructorUsedError;
  List<ProductCategory> get categories => throw _privateConstructorUsedError;
  List<ProductCategory> get brands => throw _privateConstructorUsedError;
  List<ProductTag> get tags => throw _privateConstructorUsedError;
  List<ProductImage> get images => throw _privateConstructorUsedError;
  List<ProductAttribute> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_attributes')
  List<ProductDefaultAttribute> get defaultAttributes =>
      throw _privateConstructorUsedError;
  List<int> get variations => throw _privateConstructorUsedError;
  @JsonKey(name: 'grouped_products')
  List<int> get groupedProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_order')
  int? get menuOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_html')
  String? get priceHtml => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_ids')
  List<int> get relatedIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<ProductMetaData> get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_status')
  String? get stockStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_options')
  bool? get hasOptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_password')
  String? get postPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'global_unique_id')
  String? get globalUniqueId => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
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
    List<ProductDownload> downloads,
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
    ProductDimensions dimensions,
    @JsonKey(name: 'shipping_required') bool? shippingRequired,
    @JsonKey(name: 'shipping_taxable') bool? shippingTaxable,
    @JsonKey(name: 'shipping_class') String? shippingClass,
    @JsonKey(name: 'shipping_class_id') int? shippingClassId,
    @JsonKey(name: 'reviews_allowed') bool? reviewsAllowed,
    @JsonKey(name: 'average_rating') String? averageRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    @JsonKey(name: 'upsell_ids') List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') List<int> crossSellIds,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'purchase_note') String? purchaseNote,
    List<ProductCategory> categories,
    List<ProductCategory> brands,
    List<ProductTag> tags,
    List<ProductImage> images,
    List<ProductAttribute> attributes,
    @JsonKey(name: 'default_attributes')
    List<ProductDefaultAttribute> defaultAttributes,
    List<int> variations,
    @JsonKey(name: 'grouped_products') List<int> groupedProducts,
    @JsonKey(name: 'menu_order') int? menuOrder,
    @JsonKey(name: 'price_html') String? priceHtml,
    @JsonKey(name: 'related_ids') List<int> relatedIds,
    @JsonKey(name: 'meta_data') List<ProductMetaData> metaData,
    @JsonKey(name: 'stock_status') String? stockStatus,
    @JsonKey(name: 'has_options') bool? hasOptions,
    @JsonKey(name: 'post_password') String? postPassword,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
  });

  $ProductDimensionsCopyWith<$Res> get dimensions;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? permalink = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? catalogVisibility = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? onSale = freezed,
    Object? purchasable = freezed,
    Object? totalSales = freezed,
    Object? virtual = freezed,
    Object? downloadable = freezed,
    Object? downloads = null,
    Object? downloadLimit = freezed,
    Object? downloadExpiry = freezed,
    Object? externalUrl = freezed,
    Object? buttonText = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? manageStock = freezed,
    Object? stockQuantity = freezed,
    Object? backorders = freezed,
    Object? backordersAllowed = freezed,
    Object? backordered = freezed,
    Object? lowStockAmount = freezed,
    Object? soldIndividually = freezed,
    Object? weight = freezed,
    Object? dimensions = null,
    Object? shippingRequired = freezed,
    Object? shippingTaxable = freezed,
    Object? shippingClass = freezed,
    Object? shippingClassId = freezed,
    Object? reviewsAllowed = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? upsellIds = null,
    Object? crossSellIds = null,
    Object? parentId = freezed,
    Object? purchaseNote = freezed,
    Object? categories = null,
    Object? brands = null,
    Object? tags = null,
    Object? images = null,
    Object? attributes = null,
    Object? defaultAttributes = null,
    Object? variations = null,
    Object? groupedProducts = null,
    Object? menuOrder = freezed,
    Object? priceHtml = freezed,
    Object? relatedIds = null,
    Object? metaData = null,
    Object? stockStatus = freezed,
    Object? hasOptions = freezed,
    Object? postPassword = freezed,
    Object? globalUniqueId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            permalink: freezed == permalink
                ? _value.permalink
                : permalink // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreatedGmt: freezed == dateCreatedGmt
                ? _value.dateCreatedGmt
                : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModified: freezed == dateModified
                ? _value.dateModified
                : dateModified // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModifiedGmt: freezed == dateModifiedGmt
                ? _value.dateModifiedGmt
                : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            featured: freezed == featured
                ? _value.featured
                : featured // ignore: cast_nullable_to_non_nullable
                      as bool?,
            catalogVisibility: freezed == catalogVisibility
                ? _value.catalogVisibility
                : catalogVisibility // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            shortDescription: freezed == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
            sku: freezed == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as String?,
            regularPrice: freezed == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            salePrice: freezed == salePrice
                ? _value.salePrice
                : salePrice // ignore: cast_nullable_to_non_nullable
                      as String?,
            onSale: freezed == onSale
                ? _value.onSale
                : onSale // ignore: cast_nullable_to_non_nullable
                      as bool?,
            purchasable: freezed == purchasable
                ? _value.purchasable
                : purchasable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            totalSales: freezed == totalSales
                ? _value.totalSales
                : totalSales // ignore: cast_nullable_to_non_nullable
                      as int?,
            virtual: freezed == virtual
                ? _value.virtual
                : virtual // ignore: cast_nullable_to_non_nullable
                      as bool?,
            downloadable: freezed == downloadable
                ? _value.downloadable
                : downloadable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            downloads: null == downloads
                ? _value.downloads
                : downloads // ignore: cast_nullable_to_non_nullable
                      as List<ProductDownload>,
            downloadLimit: freezed == downloadLimit
                ? _value.downloadLimit
                : downloadLimit // ignore: cast_nullable_to_non_nullable
                      as int?,
            downloadExpiry: freezed == downloadExpiry
                ? _value.downloadExpiry
                : downloadExpiry // ignore: cast_nullable_to_non_nullable
                      as int?,
            externalUrl: freezed == externalUrl
                ? _value.externalUrl
                : externalUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            buttonText: freezed == buttonText
                ? _value.buttonText
                : buttonText // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxStatus: freezed == taxStatus
                ? _value.taxStatus
                : taxStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxClass: freezed == taxClass
                ? _value.taxClass
                : taxClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            manageStock: freezed == manageStock
                ? _value.manageStock
                : manageStock // ignore: cast_nullable_to_non_nullable
                      as bool?,
            stockQuantity: freezed == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as int?,
            backorders: freezed == backorders
                ? _value.backorders
                : backorders // ignore: cast_nullable_to_non_nullable
                      as String?,
            backordersAllowed: freezed == backordersAllowed
                ? _value.backordersAllowed
                : backordersAllowed // ignore: cast_nullable_to_non_nullable
                      as bool?,
            backordered: freezed == backordered
                ? _value.backordered
                : backordered // ignore: cast_nullable_to_non_nullable
                      as bool?,
            lowStockAmount: freezed == lowStockAmount
                ? _value.lowStockAmount
                : lowStockAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            soldIndividually: freezed == soldIndividually
                ? _value.soldIndividually
                : soldIndividually // ignore: cast_nullable_to_non_nullable
                      as bool?,
            weight: freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as String?,
            dimensions: null == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                      as ProductDimensions,
            shippingRequired: freezed == shippingRequired
                ? _value.shippingRequired
                : shippingRequired // ignore: cast_nullable_to_non_nullable
                      as bool?,
            shippingTaxable: freezed == shippingTaxable
                ? _value.shippingTaxable
                : shippingTaxable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            shippingClass: freezed == shippingClass
                ? _value.shippingClass
                : shippingClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingClassId: freezed == shippingClassId
                ? _value.shippingClassId
                : shippingClassId // ignore: cast_nullable_to_non_nullable
                      as int?,
            reviewsAllowed: freezed == reviewsAllowed
                ? _value.reviewsAllowed
                : reviewsAllowed // ignore: cast_nullable_to_non_nullable
                      as bool?,
            averageRating: freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as String?,
            ratingCount: freezed == ratingCount
                ? _value.ratingCount
                : ratingCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            upsellIds: null == upsellIds
                ? _value.upsellIds
                : upsellIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            crossSellIds: null == crossSellIds
                ? _value.crossSellIds
                : crossSellIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            purchaseNote: freezed == purchaseNote
                ? _value.purchaseNote
                : purchaseNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<ProductCategory>,
            brands: null == brands
                ? _value.brands
                : brands // ignore: cast_nullable_to_non_nullable
                      as List<ProductCategory>,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<ProductTag>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProductImage>,
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<ProductAttribute>,
            defaultAttributes: null == defaultAttributes
                ? _value.defaultAttributes
                : defaultAttributes // ignore: cast_nullable_to_non_nullable
                      as List<ProductDefaultAttribute>,
            variations: null == variations
                ? _value.variations
                : variations // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            groupedProducts: null == groupedProducts
                ? _value.groupedProducts
                : groupedProducts // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            menuOrder: freezed == menuOrder
                ? _value.menuOrder
                : menuOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            priceHtml: freezed == priceHtml
                ? _value.priceHtml
                : priceHtml // ignore: cast_nullable_to_non_nullable
                      as String?,
            relatedIds: null == relatedIds
                ? _value.relatedIds
                : relatedIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<ProductMetaData>,
            stockStatus: freezed == stockStatus
                ? _value.stockStatus
                : stockStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasOptions: freezed == hasOptions
                ? _value.hasOptions
                : hasOptions // ignore: cast_nullable_to_non_nullable
                      as bool?,
            postPassword: freezed == postPassword
                ? _value.postPassword
                : postPassword // ignore: cast_nullable_to_non_nullable
                      as String?,
            globalUniqueId: freezed == globalUniqueId
                ? _value.globalUniqueId
                : globalUniqueId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDimensionsCopyWith<$Res> get dimensions {
    return $ProductDimensionsCopyWith<$Res>(_value.dimensions, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
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
    List<ProductDownload> downloads,
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
    ProductDimensions dimensions,
    @JsonKey(name: 'shipping_required') bool? shippingRequired,
    @JsonKey(name: 'shipping_taxable') bool? shippingTaxable,
    @JsonKey(name: 'shipping_class') String? shippingClass,
    @JsonKey(name: 'shipping_class_id') int? shippingClassId,
    @JsonKey(name: 'reviews_allowed') bool? reviewsAllowed,
    @JsonKey(name: 'average_rating') String? averageRating,
    @JsonKey(name: 'rating_count') int? ratingCount,
    @JsonKey(name: 'upsell_ids') List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') List<int> crossSellIds,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'purchase_note') String? purchaseNote,
    List<ProductCategory> categories,
    List<ProductCategory> brands,
    List<ProductTag> tags,
    List<ProductImage> images,
    List<ProductAttribute> attributes,
    @JsonKey(name: 'default_attributes')
    List<ProductDefaultAttribute> defaultAttributes,
    List<int> variations,
    @JsonKey(name: 'grouped_products') List<int> groupedProducts,
    @JsonKey(name: 'menu_order') int? menuOrder,
    @JsonKey(name: 'price_html') String? priceHtml,
    @JsonKey(name: 'related_ids') List<int> relatedIds,
    @JsonKey(name: 'meta_data') List<ProductMetaData> metaData,
    @JsonKey(name: 'stock_status') String? stockStatus,
    @JsonKey(name: 'has_options') bool? hasOptions,
    @JsonKey(name: 'post_password') String? postPassword,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
  });

  @override
  $ProductDimensionsCopyWith<$Res> get dimensions;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? permalink = freezed,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? catalogVisibility = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? onSale = freezed,
    Object? purchasable = freezed,
    Object? totalSales = freezed,
    Object? virtual = freezed,
    Object? downloadable = freezed,
    Object? downloads = null,
    Object? downloadLimit = freezed,
    Object? downloadExpiry = freezed,
    Object? externalUrl = freezed,
    Object? buttonText = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? manageStock = freezed,
    Object? stockQuantity = freezed,
    Object? backorders = freezed,
    Object? backordersAllowed = freezed,
    Object? backordered = freezed,
    Object? lowStockAmount = freezed,
    Object? soldIndividually = freezed,
    Object? weight = freezed,
    Object? dimensions = null,
    Object? shippingRequired = freezed,
    Object? shippingTaxable = freezed,
    Object? shippingClass = freezed,
    Object? shippingClassId = freezed,
    Object? reviewsAllowed = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? upsellIds = null,
    Object? crossSellIds = null,
    Object? parentId = freezed,
    Object? purchaseNote = freezed,
    Object? categories = null,
    Object? brands = null,
    Object? tags = null,
    Object? images = null,
    Object? attributes = null,
    Object? defaultAttributes = null,
    Object? variations = null,
    Object? groupedProducts = null,
    Object? menuOrder = freezed,
    Object? priceHtml = freezed,
    Object? relatedIds = null,
    Object? metaData = null,
    Object? stockStatus = freezed,
    Object? hasOptions = freezed,
    Object? postPassword = freezed,
    Object? globalUniqueId = freezed,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        permalink: freezed == permalink
            ? _value.permalink
            : permalink // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreatedGmt: freezed == dateCreatedGmt
            ? _value.dateCreatedGmt
            : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModified: freezed == dateModified
            ? _value.dateModified
            : dateModified // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModifiedGmt: freezed == dateModifiedGmt
            ? _value.dateModifiedGmt
            : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        featured: freezed == featured
            ? _value.featured
            : featured // ignore: cast_nullable_to_non_nullable
                  as bool?,
        catalogVisibility: freezed == catalogVisibility
            ? _value.catalogVisibility
            : catalogVisibility // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        shortDescription: freezed == shortDescription
            ? _value.shortDescription
            : shortDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
        sku: freezed == sku
            ? _value.sku
            : sku // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as String?,
        regularPrice: freezed == regularPrice
            ? _value.regularPrice
            : regularPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        salePrice: freezed == salePrice
            ? _value.salePrice
            : salePrice // ignore: cast_nullable_to_non_nullable
                  as String?,
        onSale: freezed == onSale
            ? _value.onSale
            : onSale // ignore: cast_nullable_to_non_nullable
                  as bool?,
        purchasable: freezed == purchasable
            ? _value.purchasable
            : purchasable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        totalSales: freezed == totalSales
            ? _value.totalSales
            : totalSales // ignore: cast_nullable_to_non_nullable
                  as int?,
        virtual: freezed == virtual
            ? _value.virtual
            : virtual // ignore: cast_nullable_to_non_nullable
                  as bool?,
        downloadable: freezed == downloadable
            ? _value.downloadable
            : downloadable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        downloads: null == downloads
            ? _value._downloads
            : downloads // ignore: cast_nullable_to_non_nullable
                  as List<ProductDownload>,
        downloadLimit: freezed == downloadLimit
            ? _value.downloadLimit
            : downloadLimit // ignore: cast_nullable_to_non_nullable
                  as int?,
        downloadExpiry: freezed == downloadExpiry
            ? _value.downloadExpiry
            : downloadExpiry // ignore: cast_nullable_to_non_nullable
                  as int?,
        externalUrl: freezed == externalUrl
            ? _value.externalUrl
            : externalUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        buttonText: freezed == buttonText
            ? _value.buttonText
            : buttonText // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxStatus: freezed == taxStatus
            ? _value.taxStatus
            : taxStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxClass: freezed == taxClass
            ? _value.taxClass
            : taxClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        manageStock: freezed == manageStock
            ? _value.manageStock
            : manageStock // ignore: cast_nullable_to_non_nullable
                  as bool?,
        stockQuantity: freezed == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as int?,
        backorders: freezed == backorders
            ? _value.backorders
            : backorders // ignore: cast_nullable_to_non_nullable
                  as String?,
        backordersAllowed: freezed == backordersAllowed
            ? _value.backordersAllowed
            : backordersAllowed // ignore: cast_nullable_to_non_nullable
                  as bool?,
        backordered: freezed == backordered
            ? _value.backordered
            : backordered // ignore: cast_nullable_to_non_nullable
                  as bool?,
        lowStockAmount: freezed == lowStockAmount
            ? _value.lowStockAmount
            : lowStockAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        soldIndividually: freezed == soldIndividually
            ? _value.soldIndividually
            : soldIndividually // ignore: cast_nullable_to_non_nullable
                  as bool?,
        weight: freezed == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as String?,
        dimensions: null == dimensions
            ? _value.dimensions
            : dimensions // ignore: cast_nullable_to_non_nullable
                  as ProductDimensions,
        shippingRequired: freezed == shippingRequired
            ? _value.shippingRequired
            : shippingRequired // ignore: cast_nullable_to_non_nullable
                  as bool?,
        shippingTaxable: freezed == shippingTaxable
            ? _value.shippingTaxable
            : shippingTaxable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        shippingClass: freezed == shippingClass
            ? _value.shippingClass
            : shippingClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingClassId: freezed == shippingClassId
            ? _value.shippingClassId
            : shippingClassId // ignore: cast_nullable_to_non_nullable
                  as int?,
        reviewsAllowed: freezed == reviewsAllowed
            ? _value.reviewsAllowed
            : reviewsAllowed // ignore: cast_nullable_to_non_nullable
                  as bool?,
        averageRating: freezed == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as String?,
        ratingCount: freezed == ratingCount
            ? _value.ratingCount
            : ratingCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        upsellIds: null == upsellIds
            ? _value._upsellIds
            : upsellIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        crossSellIds: null == crossSellIds
            ? _value._crossSellIds
            : crossSellIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        purchaseNote: freezed == purchaseNote
            ? _value.purchaseNote
            : purchaseNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<ProductCategory>,
        brands: null == brands
            ? _value._brands
            : brands // ignore: cast_nullable_to_non_nullable
                  as List<ProductCategory>,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<ProductTag>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProductImage>,
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<ProductAttribute>,
        defaultAttributes: null == defaultAttributes
            ? _value._defaultAttributes
            : defaultAttributes // ignore: cast_nullable_to_non_nullable
                  as List<ProductDefaultAttribute>,
        variations: null == variations
            ? _value._variations
            : variations // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        groupedProducts: null == groupedProducts
            ? _value._groupedProducts
            : groupedProducts // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        menuOrder: freezed == menuOrder
            ? _value.menuOrder
            : menuOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        priceHtml: freezed == priceHtml
            ? _value.priceHtml
            : priceHtml // ignore: cast_nullable_to_non_nullable
                  as String?,
        relatedIds: null == relatedIds
            ? _value._relatedIds
            : relatedIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<ProductMetaData>,
        stockStatus: freezed == stockStatus
            ? _value.stockStatus
            : stockStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasOptions: freezed == hasOptions
            ? _value.hasOptions
            : hasOptions // ignore: cast_nullable_to_non_nullable
                  as bool?,
        postPassword: freezed == postPassword
            ? _value.postPassword
            : postPassword // ignore: cast_nullable_to_non_nullable
                  as String?,
        globalUniqueId: freezed == globalUniqueId
            ? _value.globalUniqueId
            : globalUniqueId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.name,
    required this.slug,
    this.permalink,
    @JsonKey(name: 'date_created') this.dateCreated,
    @JsonKey(name: 'date_created_gmt') this.dateCreatedGmt,
    @JsonKey(name: 'date_modified') this.dateModified,
    @JsonKey(name: 'date_modified_gmt') this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    @JsonKey(name: 'catalog_visibility') this.catalogVisibility,
    this.description,
    @JsonKey(name: 'short_description') this.shortDescription,
    this.sku,
    this.price,
    @JsonKey(name: 'regular_price') this.regularPrice,
    @JsonKey(name: 'sale_price') this.salePrice,
    @JsonKey(name: 'on_sale') this.onSale,
    this.purchasable,
    @JsonKey(name: 'total_sales') this.totalSales,
    this.virtual,
    this.downloadable,
    final List<ProductDownload> downloads = const <ProductDownload>[],
    @JsonKey(name: 'download_limit') this.downloadLimit,
    @JsonKey(name: 'download_expiry') this.downloadExpiry,
    @JsonKey(name: 'external_url') this.externalUrl,
    @JsonKey(name: 'button_text') this.buttonText,
    @JsonKey(name: 'tax_status') this.taxStatus,
    @JsonKey(name: 'tax_class') this.taxClass,
    @JsonKey(name: 'manage_stock') this.manageStock,
    @JsonKey(name: 'stock_quantity') this.stockQuantity,
    this.backorders,
    @JsonKey(name: 'backorders_allowed') this.backordersAllowed,
    this.backordered,
    @JsonKey(name: 'low_stock_amount') this.lowStockAmount,
    @JsonKey(name: 'sold_individually') this.soldIndividually,
    this.weight,
    this.dimensions = const ProductDimensions(),
    @JsonKey(name: 'shipping_required') this.shippingRequired,
    @JsonKey(name: 'shipping_taxable') this.shippingTaxable,
    @JsonKey(name: 'shipping_class') this.shippingClass,
    @JsonKey(name: 'shipping_class_id') this.shippingClassId,
    @JsonKey(name: 'reviews_allowed') this.reviewsAllowed,
    @JsonKey(name: 'average_rating') this.averageRating,
    @JsonKey(name: 'rating_count') this.ratingCount,
    @JsonKey(name: 'upsell_ids') final List<int> upsellIds = const <int>[],
    @JsonKey(name: 'cross_sell_ids')
    final List<int> crossSellIds = const <int>[],
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'purchase_note') this.purchaseNote,
    final List<ProductCategory> categories = const <ProductCategory>[],
    final List<ProductCategory> brands = const <ProductCategory>[],
    final List<ProductTag> tags = const <ProductTag>[],
    final List<ProductImage> images = const <ProductImage>[],
    final List<ProductAttribute> attributes = const <ProductAttribute>[],
    @JsonKey(name: 'default_attributes')
    final List<ProductDefaultAttribute> defaultAttributes =
        const <ProductDefaultAttribute>[],
    final List<int> variations = const <int>[],
    @JsonKey(name: 'grouped_products')
    final List<int> groupedProducts = const <int>[],
    @JsonKey(name: 'menu_order') this.menuOrder,
    @JsonKey(name: 'price_html') this.priceHtml,
    @JsonKey(name: 'related_ids') final List<int> relatedIds = const <int>[],
    @JsonKey(name: 'meta_data')
    final List<ProductMetaData> metaData = const <ProductMetaData>[],
    @JsonKey(name: 'stock_status') this.stockStatus,
    @JsonKey(name: 'has_options') this.hasOptions,
    @JsonKey(name: 'post_password') this.postPassword,
    @JsonKey(name: 'global_unique_id') this.globalUniqueId,
  }) : _downloads = downloads,
       _upsellIds = upsellIds,
       _crossSellIds = crossSellIds,
       _categories = categories,
       _brands = brands,
       _tags = tags,
       _images = images,
       _attributes = attributes,
       _defaultAttributes = defaultAttributes,
       _variations = variations,
       _groupedProducts = groupedProducts,
       _relatedIds = relatedIds,
       _metaData = metaData;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? permalink;
  @override
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @override
  @JsonKey(name: 'date_created_gmt')
  final String? dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified')
  final String? dateModified;
  @override
  @JsonKey(name: 'date_modified_gmt')
  final String? dateModifiedGmt;
  @override
  final String? type;
  @override
  final String? status;
  @override
  final bool? featured;
  @override
  @JsonKey(name: 'catalog_visibility')
  final String? catalogVisibility;
  @override
  final String? description;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  final String? sku;
  @override
  final String? price;
  @override
  @JsonKey(name: 'regular_price')
  final String? regularPrice;
  @override
  @JsonKey(name: 'sale_price')
  final String? salePrice;
  @override
  @JsonKey(name: 'on_sale')
  final bool? onSale;
  @override
  final bool? purchasable;
  @override
  @JsonKey(name: 'total_sales')
  final int? totalSales;
  @override
  final bool? virtual;
  @override
  final bool? downloadable;
  final List<ProductDownload> _downloads;
  @override
  @JsonKey()
  List<ProductDownload> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  @JsonKey(name: 'download_limit')
  final int? downloadLimit;
  @override
  @JsonKey(name: 'download_expiry')
  final int? downloadExpiry;
  @override
  @JsonKey(name: 'external_url')
  final String? externalUrl;
  @override
  @JsonKey(name: 'button_text')
  final String? buttonText;
  @override
  @JsonKey(name: 'tax_status')
  final String? taxStatus;
  @override
  @JsonKey(name: 'tax_class')
  final String? taxClass;
  @override
  @JsonKey(name: 'manage_stock')
  final bool? manageStock;
  @override
  @JsonKey(name: 'stock_quantity')
  final int? stockQuantity;
  @override
  final String? backorders;
  @override
  @JsonKey(name: 'backorders_allowed')
  final bool? backordersAllowed;
  @override
  final bool? backordered;
  @override
  @JsonKey(name: 'low_stock_amount')
  final int? lowStockAmount;
  @override
  @JsonKey(name: 'sold_individually')
  final bool? soldIndividually;
  @override
  final String? weight;
  @override
  @JsonKey()
  final ProductDimensions dimensions;
  @override
  @JsonKey(name: 'shipping_required')
  final bool? shippingRequired;
  @override
  @JsonKey(name: 'shipping_taxable')
  final bool? shippingTaxable;
  @override
  @JsonKey(name: 'shipping_class')
  final String? shippingClass;
  @override
  @JsonKey(name: 'shipping_class_id')
  final int? shippingClassId;
  @override
  @JsonKey(name: 'reviews_allowed')
  final bool? reviewsAllowed;
  @override
  @JsonKey(name: 'average_rating')
  final String? averageRating;
  @override
  @JsonKey(name: 'rating_count')
  final int? ratingCount;
  final List<int> _upsellIds;
  @override
  @JsonKey(name: 'upsell_ids')
  List<int> get upsellIds {
    if (_upsellIds is EqualUnmodifiableListView) return _upsellIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upsellIds);
  }

  final List<int> _crossSellIds;
  @override
  @JsonKey(name: 'cross_sell_ids')
  List<int> get crossSellIds {
    if (_crossSellIds is EqualUnmodifiableListView) return _crossSellIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crossSellIds);
  }

  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'purchase_note')
  final String? purchaseNote;
  final List<ProductCategory> _categories;
  @override
  @JsonKey()
  List<ProductCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductCategory> _brands;
  @override
  @JsonKey()
  List<ProductCategory> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<ProductTag> _tags;
  @override
  @JsonKey()
  List<ProductTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<ProductImage> _images;
  @override
  @JsonKey()
  List<ProductImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ProductAttribute> _attributes;
  @override
  @JsonKey()
  List<ProductAttribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<ProductDefaultAttribute> _defaultAttributes;
  @override
  @JsonKey(name: 'default_attributes')
  List<ProductDefaultAttribute> get defaultAttributes {
    if (_defaultAttributes is EqualUnmodifiableListView)
      return _defaultAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultAttributes);
  }

  final List<int> _variations;
  @override
  @JsonKey()
  List<int> get variations {
    if (_variations is EqualUnmodifiableListView) return _variations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variations);
  }

  final List<int> _groupedProducts;
  @override
  @JsonKey(name: 'grouped_products')
  List<int> get groupedProducts {
    if (_groupedProducts is EqualUnmodifiableListView) return _groupedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedProducts);
  }

  @override
  @JsonKey(name: 'menu_order')
  final int? menuOrder;
  @override
  @JsonKey(name: 'price_html')
  final String? priceHtml;
  final List<int> _relatedIds;
  @override
  @JsonKey(name: 'related_ids')
  List<int> get relatedIds {
    if (_relatedIds is EqualUnmodifiableListView) return _relatedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedIds);
  }

  final List<ProductMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<ProductMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  @JsonKey(name: 'stock_status')
  final String? stockStatus;
  @override
  @JsonKey(name: 'has_options')
  final bool? hasOptions;
  @override
  @JsonKey(name: 'post_password')
  final String? postPassword;
  @override
  @JsonKey(name: 'global_unique_id')
  final String? globalUniqueId;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, permalink: $permalink, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, downloads: $downloads, downloadLimit: $downloadLimit, downloadExpiry: $downloadExpiry, externalUrl: $externalUrl, buttonText: $buttonText, taxStatus: $taxStatus, taxClass: $taxClass, manageStock: $manageStock, stockQuantity: $stockQuantity, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, lowStockAmount: $lowStockAmount, soldIndividually: $soldIndividually, weight: $weight, dimensions: $dimensions, shippingRequired: $shippingRequired, shippingTaxable: $shippingTaxable, shippingClass: $shippingClass, shippingClassId: $shippingClassId, reviewsAllowed: $reviewsAllowed, averageRating: $averageRating, ratingCount: $ratingCount, upsellIds: $upsellIds, crossSellIds: $crossSellIds, parentId: $parentId, purchaseNote: $purchaseNote, categories: $categories, brands: $brands, tags: $tags, images: $images, attributes: $attributes, defaultAttributes: $defaultAttributes, variations: $variations, groupedProducts: $groupedProducts, menuOrder: $menuOrder, priceHtml: $priceHtml, relatedIds: $relatedIds, metaData: $metaData, stockStatus: $stockStatus, hasOptions: $hasOptions, postPassword: $postPassword, globalUniqueId: $globalUniqueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.onSale, onSale) || other.onSale == onSale) &&
            (identical(other.purchasable, purchasable) ||
                other.purchasable == purchasable) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.virtual, virtual) || other.virtual == virtual) &&
            (identical(other.downloadable, downloadable) ||
                other.downloadable == downloadable) &&
            const DeepCollectionEquality().equals(
              other._downloads,
              _downloads,
            ) &&
            (identical(other.downloadLimit, downloadLimit) ||
                other.downloadLimit == downloadLimit) &&
            (identical(other.downloadExpiry, downloadExpiry) ||
                other.downloadExpiry == downloadExpiry) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.taxStatus, taxStatus) ||
                other.taxStatus == taxStatus) &&
            (identical(other.taxClass, taxClass) ||
                other.taxClass == taxClass) &&
            (identical(other.manageStock, manageStock) ||
                other.manageStock == manageStock) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.backorders, backorders) ||
                other.backorders == backorders) &&
            (identical(other.backordersAllowed, backordersAllowed) ||
                other.backordersAllowed == backordersAllowed) &&
            (identical(other.backordered, backordered) ||
                other.backordered == backordered) &&
            (identical(other.lowStockAmount, lowStockAmount) ||
                other.lowStockAmount == lowStockAmount) &&
            (identical(other.soldIndividually, soldIndividually) ||
                other.soldIndividually == soldIndividually) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.shippingRequired, shippingRequired) ||
                other.shippingRequired == shippingRequired) &&
            (identical(other.shippingTaxable, shippingTaxable) ||
                other.shippingTaxable == shippingTaxable) &&
            (identical(other.shippingClass, shippingClass) ||
                other.shippingClass == shippingClass) &&
            (identical(other.shippingClassId, shippingClassId) ||
                other.shippingClassId == shippingClassId) &&
            (identical(other.reviewsAllowed, reviewsAllowed) ||
                other.reviewsAllowed == reviewsAllowed) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            const DeepCollectionEquality().equals(
              other._upsellIds,
              _upsellIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._crossSellIds,
              _crossSellIds,
            ) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.purchaseNote, purchaseNote) ||
                other.purchaseNote == purchaseNote) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            const DeepCollectionEquality().equals(
              other._defaultAttributes,
              _defaultAttributes,
            ) &&
            const DeepCollectionEquality().equals(
              other._variations,
              _variations,
            ) &&
            const DeepCollectionEquality().equals(
              other._groupedProducts,
              _groupedProducts,
            ) &&
            (identical(other.menuOrder, menuOrder) ||
                other.menuOrder == menuOrder) &&
            (identical(other.priceHtml, priceHtml) ||
                other.priceHtml == priceHtml) &&
            const DeepCollectionEquality().equals(
              other._relatedIds,
              _relatedIds,
            ) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus) &&
            (identical(other.hasOptions, hasOptions) ||
                other.hasOptions == hasOptions) &&
            (identical(other.postPassword, postPassword) ||
                other.postPassword == postPassword) &&
            (identical(other.globalUniqueId, globalUniqueId) ||
                other.globalUniqueId == globalUniqueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    slug,
    permalink,
    dateCreated,
    dateCreatedGmt,
    dateModified,
    dateModifiedGmt,
    type,
    status,
    featured,
    catalogVisibility,
    description,
    shortDescription,
    sku,
    price,
    regularPrice,
    salePrice,
    onSale,
    purchasable,
    totalSales,
    virtual,
    downloadable,
    const DeepCollectionEquality().hash(_downloads),
    downloadLimit,
    downloadExpiry,
    externalUrl,
    buttonText,
    taxStatus,
    taxClass,
    manageStock,
    stockQuantity,
    backorders,
    backordersAllowed,
    backordered,
    lowStockAmount,
    soldIndividually,
    weight,
    dimensions,
    shippingRequired,
    shippingTaxable,
    shippingClass,
    shippingClassId,
    reviewsAllowed,
    averageRating,
    ratingCount,
    const DeepCollectionEquality().hash(_upsellIds),
    const DeepCollectionEquality().hash(_crossSellIds),
    parentId,
    purchaseNote,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_brands),
    const DeepCollectionEquality().hash(_tags),
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_attributes),
    const DeepCollectionEquality().hash(_defaultAttributes),
    const DeepCollectionEquality().hash(_variations),
    const DeepCollectionEquality().hash(_groupedProducts),
    menuOrder,
    priceHtml,
    const DeepCollectionEquality().hash(_relatedIds),
    const DeepCollectionEquality().hash(_metaData),
    stockStatus,
    hasOptions,
    postPassword,
    globalUniqueId,
  ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({
    required final int id,
    required final String name,
    required final String slug,
    final String? permalink,
    @JsonKey(name: 'date_created') final String? dateCreated,
    @JsonKey(name: 'date_created_gmt') final String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') final String? dateModified,
    @JsonKey(name: 'date_modified_gmt') final String? dateModifiedGmt,
    final String? type,
    final String? status,
    final bool? featured,
    @JsonKey(name: 'catalog_visibility') final String? catalogVisibility,
    final String? description,
    @JsonKey(name: 'short_description') final String? shortDescription,
    final String? sku,
    final String? price,
    @JsonKey(name: 'regular_price') final String? regularPrice,
    @JsonKey(name: 'sale_price') final String? salePrice,
    @JsonKey(name: 'on_sale') final bool? onSale,
    final bool? purchasable,
    @JsonKey(name: 'total_sales') final int? totalSales,
    final bool? virtual,
    final bool? downloadable,
    final List<ProductDownload> downloads,
    @JsonKey(name: 'download_limit') final int? downloadLimit,
    @JsonKey(name: 'download_expiry') final int? downloadExpiry,
    @JsonKey(name: 'external_url') final String? externalUrl,
    @JsonKey(name: 'button_text') final String? buttonText,
    @JsonKey(name: 'tax_status') final String? taxStatus,
    @JsonKey(name: 'tax_class') final String? taxClass,
    @JsonKey(name: 'manage_stock') final bool? manageStock,
    @JsonKey(name: 'stock_quantity') final int? stockQuantity,
    final String? backorders,
    @JsonKey(name: 'backorders_allowed') final bool? backordersAllowed,
    final bool? backordered,
    @JsonKey(name: 'low_stock_amount') final int? lowStockAmount,
    @JsonKey(name: 'sold_individually') final bool? soldIndividually,
    final String? weight,
    final ProductDimensions dimensions,
    @JsonKey(name: 'shipping_required') final bool? shippingRequired,
    @JsonKey(name: 'shipping_taxable') final bool? shippingTaxable,
    @JsonKey(name: 'shipping_class') final String? shippingClass,
    @JsonKey(name: 'shipping_class_id') final int? shippingClassId,
    @JsonKey(name: 'reviews_allowed') final bool? reviewsAllowed,
    @JsonKey(name: 'average_rating') final String? averageRating,
    @JsonKey(name: 'rating_count') final int? ratingCount,
    @JsonKey(name: 'upsell_ids') final List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') final List<int> crossSellIds,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'purchase_note') final String? purchaseNote,
    final List<ProductCategory> categories,
    final List<ProductCategory> brands,
    final List<ProductTag> tags,
    final List<ProductImage> images,
    final List<ProductAttribute> attributes,
    @JsonKey(name: 'default_attributes')
    final List<ProductDefaultAttribute> defaultAttributes,
    final List<int> variations,
    @JsonKey(name: 'grouped_products') final List<int> groupedProducts,
    @JsonKey(name: 'menu_order') final int? menuOrder,
    @JsonKey(name: 'price_html') final String? priceHtml,
    @JsonKey(name: 'related_ids') final List<int> relatedIds,
    @JsonKey(name: 'meta_data') final List<ProductMetaData> metaData,
    @JsonKey(name: 'stock_status') final String? stockStatus,
    @JsonKey(name: 'has_options') final bool? hasOptions,
    @JsonKey(name: 'post_password') final String? postPassword,
    @JsonKey(name: 'global_unique_id') final String? globalUniqueId,
  }) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get permalink;
  @override
  @JsonKey(name: 'date_created')
  String? get dateCreated;
  @override
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified')
  String? get dateModified;
  @override
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt;
  @override
  String? get type;
  @override
  String? get status;
  @override
  bool? get featured;
  @override
  @JsonKey(name: 'catalog_visibility')
  String? get catalogVisibility;
  @override
  String? get description;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  String? get sku;
  @override
  String? get price;
  @override
  @JsonKey(name: 'regular_price')
  String? get regularPrice;
  @override
  @JsonKey(name: 'sale_price')
  String? get salePrice;
  @override
  @JsonKey(name: 'on_sale')
  bool? get onSale;
  @override
  bool? get purchasable;
  @override
  @JsonKey(name: 'total_sales')
  int? get totalSales;
  @override
  bool? get virtual;
  @override
  bool? get downloadable;
  @override
  List<ProductDownload> get downloads;
  @override
  @JsonKey(name: 'download_limit')
  int? get downloadLimit;
  @override
  @JsonKey(name: 'download_expiry')
  int? get downloadExpiry;
  @override
  @JsonKey(name: 'external_url')
  String? get externalUrl;
  @override
  @JsonKey(name: 'button_text')
  String? get buttonText;
  @override
  @JsonKey(name: 'tax_status')
  String? get taxStatus;
  @override
  @JsonKey(name: 'tax_class')
  String? get taxClass;
  @override
  @JsonKey(name: 'manage_stock')
  bool? get manageStock;
  @override
  @JsonKey(name: 'stock_quantity')
  int? get stockQuantity;
  @override
  String? get backorders;
  @override
  @JsonKey(name: 'backorders_allowed')
  bool? get backordersAllowed;
  @override
  bool? get backordered;
  @override
  @JsonKey(name: 'low_stock_amount')
  int? get lowStockAmount;
  @override
  @JsonKey(name: 'sold_individually')
  bool? get soldIndividually;
  @override
  String? get weight;
  @override
  ProductDimensions get dimensions;
  @override
  @JsonKey(name: 'shipping_required')
  bool? get shippingRequired;
  @override
  @JsonKey(name: 'shipping_taxable')
  bool? get shippingTaxable;
  @override
  @JsonKey(name: 'shipping_class')
  String? get shippingClass;
  @override
  @JsonKey(name: 'shipping_class_id')
  int? get shippingClassId;
  @override
  @JsonKey(name: 'reviews_allowed')
  bool? get reviewsAllowed;
  @override
  @JsonKey(name: 'average_rating')
  String? get averageRating;
  @override
  @JsonKey(name: 'rating_count')
  int? get ratingCount;
  @override
  @JsonKey(name: 'upsell_ids')
  List<int> get upsellIds;
  @override
  @JsonKey(name: 'cross_sell_ids')
  List<int> get crossSellIds;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'purchase_note')
  String? get purchaseNote;
  @override
  List<ProductCategory> get categories;
  @override
  List<ProductCategory> get brands;
  @override
  List<ProductTag> get tags;
  @override
  List<ProductImage> get images;
  @override
  List<ProductAttribute> get attributes;
  @override
  @JsonKey(name: 'default_attributes')
  List<ProductDefaultAttribute> get defaultAttributes;
  @override
  List<int> get variations;
  @override
  @JsonKey(name: 'grouped_products')
  List<int> get groupedProducts;
  @override
  @JsonKey(name: 'menu_order')
  int? get menuOrder;
  @override
  @JsonKey(name: 'price_html')
  String? get priceHtml;
  @override
  @JsonKey(name: 'related_ids')
  List<int> get relatedIds;
  @override
  @JsonKey(name: 'meta_data')
  List<ProductMetaData> get metaData;
  @override
  @JsonKey(name: 'stock_status')
  String? get stockStatus;
  @override
  @JsonKey(name: 'has_options')
  bool? get hasOptions;
  @override
  @JsonKey(name: 'post_password')
  String? get postPassword;
  @override
  @JsonKey(name: 'global_unique_id')
  String? get globalUniqueId;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDimensions _$ProductDimensionsFromJson(Map<String, dynamic> json) {
  return _ProductDimensions.fromJson(json);
}

/// @nodoc
mixin _$ProductDimensions {
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;

  /// Serializes this ProductDimensions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDimensionsCopyWith<ProductDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDimensionsCopyWith<$Res> {
  factory $ProductDimensionsCopyWith(
    ProductDimensions value,
    $Res Function(ProductDimensions) then,
  ) = _$ProductDimensionsCopyWithImpl<$Res, ProductDimensions>;
  @useResult
  $Res call({String? length, String? width, String? height});
}

/// @nodoc
class _$ProductDimensionsCopyWithImpl<$Res, $Val extends ProductDimensions>
    implements $ProductDimensionsCopyWith<$Res> {
  _$ProductDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(
      _value.copyWith(
            length: freezed == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                      as String?,
            width: freezed == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as String?,
            height: freezed == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDimensionsImplCopyWith<$Res>
    implements $ProductDimensionsCopyWith<$Res> {
  factory _$$ProductDimensionsImplCopyWith(
    _$ProductDimensionsImpl value,
    $Res Function(_$ProductDimensionsImpl) then,
  ) = __$$ProductDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? length, String? width, String? height});
}

/// @nodoc
class __$$ProductDimensionsImplCopyWithImpl<$Res>
    extends _$ProductDimensionsCopyWithImpl<$Res, _$ProductDimensionsImpl>
    implements _$$ProductDimensionsImplCopyWith<$Res> {
  __$$ProductDimensionsImplCopyWithImpl(
    _$ProductDimensionsImpl _value,
    $Res Function(_$ProductDimensionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(
      _$ProductDimensionsImpl(
        length: freezed == length
            ? _value.length
            : length // ignore: cast_nullable_to_non_nullable
                  as String?,
        width: freezed == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as String?,
        height: freezed == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDimensionsImpl implements _ProductDimensions {
  const _$ProductDimensionsImpl({this.length, this.width, this.height});

  factory _$ProductDimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDimensionsImplFromJson(json);

  @override
  final String? length;
  @override
  final String? width;
  @override
  final String? height;

  @override
  String toString() {
    return 'ProductDimensions(length: $length, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDimensionsImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, length, width, height);

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDimensionsImplCopyWith<_$ProductDimensionsImpl> get copyWith =>
      __$$ProductDimensionsImplCopyWithImpl<_$ProductDimensionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDimensionsImplToJson(this);
  }
}

abstract class _ProductDimensions implements ProductDimensions {
  const factory _ProductDimensions({
    final String? length,
    final String? width,
    final String? height,
  }) = _$ProductDimensionsImpl;

  factory _ProductDimensions.fromJson(Map<String, dynamic> json) =
      _$ProductDimensionsImpl.fromJson;

  @override
  String? get length;
  @override
  String? get width;
  @override
  String? get height;

  /// Create a copy of ProductDimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDimensionsImplCopyWith<_$ProductDimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
    ProductCategory value,
    $Res Function(ProductCategory) then,
  ) = _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(
    _$ProductCategoryImpl value,
    $Res Function(_$ProductCategoryImpl) then,
  ) = __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
    _$ProductCategoryImpl _value,
    $Res Function(_$ProductCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _$ProductCategoryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(this);
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory({
    required final int id,
    required final String name,
    required final String slug,
  }) = _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductTag _$ProductTagFromJson(Map<String, dynamic> json) {
  return _ProductTag.fromJson(json);
}

/// @nodoc
mixin _$ProductTag {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ProductTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductTagCopyWith<ProductTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTagCopyWith<$Res> {
  factory $ProductTagCopyWith(
    ProductTag value,
    $Res Function(ProductTag) then,
  ) = _$ProductTagCopyWithImpl<$Res, ProductTag>;
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class _$ProductTagCopyWithImpl<$Res, $Val extends ProductTag>
    implements $ProductTagCopyWith<$Res> {
  _$ProductTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductTagImplCopyWith<$Res>
    implements $ProductTagCopyWith<$Res> {
  factory _$$ProductTagImplCopyWith(
    _$ProductTagImpl value,
    $Res Function(_$ProductTagImpl) then,
  ) = __$$ProductTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class __$$ProductTagImplCopyWithImpl<$Res>
    extends _$ProductTagCopyWithImpl<$Res, _$ProductTagImpl>
    implements _$$ProductTagImplCopyWith<$Res> {
  __$$ProductTagImplCopyWithImpl(
    _$ProductTagImpl _value,
    $Res Function(_$ProductTagImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? slug = null}) {
    return _then(
      _$ProductTagImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductTagImpl implements _ProductTag {
  const _$ProductTagImpl({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory _$ProductTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTagImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'ProductTag(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  /// Create a copy of ProductTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTagImplCopyWith<_$ProductTagImpl> get copyWith =>
      __$$ProductTagImplCopyWithImpl<_$ProductTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTagImplToJson(this);
  }
}

abstract class _ProductTag implements ProductTag {
  const factory _ProductTag({
    required final int id,
    required final String name,
    required final String slug,
  }) = _$ProductTagImpl;

  factory _ProductTag.fromJson(Map<String, dynamic> json) =
      _$ProductTagImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;

  /// Create a copy of ProductTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTagImplCopyWith<_$ProductTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified')
  String? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;
  String? get srcset => throw _privateConstructorUsedError;
  String? get sizes => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
    ProductImage value,
    $Res Function(ProductImage) then,
  ) = _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_created_gmt') String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'date_modified_gmt') String? dateModifiedGmt,
    String src,
    String name,
    String? alt,
    String? srcset,
    String? sizes,
    String? thumbnail,
  });
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? src = null,
    Object? name = null,
    Object? alt = freezed,
    Object? srcset = freezed,
    Object? sizes = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreatedGmt: freezed == dateCreatedGmt
                ? _value.dateCreatedGmt
                : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModified: freezed == dateModified
                ? _value.dateModified
                : dateModified // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModifiedGmt: freezed == dateModifiedGmt
                ? _value.dateModifiedGmt
                : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            src: null == src
                ? _value.src
                : src // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            alt: freezed == alt
                ? _value.alt
                : alt // ignore: cast_nullable_to_non_nullable
                      as String?,
            srcset: freezed == srcset
                ? _value.srcset
                : srcset // ignore: cast_nullable_to_non_nullable
                      as String?,
            sizes: freezed == sizes
                ? _value.sizes
                : sizes // ignore: cast_nullable_to_non_nullable
                      as String?,
            thumbnail: freezed == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
    _$ProductImageImpl value,
    $Res Function(_$ProductImageImpl) then,
  ) = __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_created_gmt') String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'date_modified_gmt') String? dateModifiedGmt,
    String src,
    String name,
    String? alt,
    String? srcset,
    String? sizes,
    String? thumbnail,
  });
}

/// @nodoc
class __$$ProductImageImplCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$ProductImageImpl>
    implements _$$ProductImageImplCopyWith<$Res> {
  __$$ProductImageImplCopyWithImpl(
    _$ProductImageImpl _value,
    $Res Function(_$ProductImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCreated = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModified = freezed,
    Object? dateModifiedGmt = freezed,
    Object? src = null,
    Object? name = null,
    Object? alt = freezed,
    Object? srcset = freezed,
    Object? sizes = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(
      _$ProductImageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreatedGmt: freezed == dateCreatedGmt
            ? _value.dateCreatedGmt
            : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModified: freezed == dateModified
            ? _value.dateModified
            : dateModified // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModifiedGmt: freezed == dateModifiedGmt
            ? _value.dateModifiedGmt
            : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        src: null == src
            ? _value.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        alt: freezed == alt
            ? _value.alt
            : alt // ignore: cast_nullable_to_non_nullable
                  as String?,
        srcset: freezed == srcset
            ? _value.srcset
            : srcset // ignore: cast_nullable_to_non_nullable
                  as String?,
        sizes: freezed == sizes
            ? _value.sizes
            : sizes // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnail: freezed == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl({
    required this.id,
    @JsonKey(name: 'date_created') this.dateCreated,
    @JsonKey(name: 'date_created_gmt') this.dateCreatedGmt,
    @JsonKey(name: 'date_modified') this.dateModified,
    @JsonKey(name: 'date_modified_gmt') this.dateModifiedGmt,
    required this.src,
    required this.name,
    this.alt,
    this.srcset,
    this.sizes,
    this.thumbnail,
  });

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @override
  @JsonKey(name: 'date_created_gmt')
  final String? dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified')
  final String? dateModified;
  @override
  @JsonKey(name: 'date_modified_gmt')
  final String? dateModifiedGmt;
  @override
  final String src;
  @override
  final String name;
  @override
  final String? alt;
  @override
  final String? srcset;
  @override
  final String? sizes;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'ProductImage(id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, src: $src, name: $name, alt: $alt, srcset: $srcset, sizes: $sizes, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alt, alt) || other.alt == alt) &&
            (identical(other.srcset, srcset) || other.srcset == srcset) &&
            (identical(other.sizes, sizes) || other.sizes == sizes) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    dateCreated,
    dateCreatedGmt,
    dateModified,
    dateModifiedGmt,
    src,
    name,
    alt,
    srcset,
    sizes,
    thumbnail,
  );

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      __$$ProductImageImplCopyWithImpl<_$ProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageImplToJson(this);
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage({
    required final int id,
    @JsonKey(name: 'date_created') final String? dateCreated,
    @JsonKey(name: 'date_created_gmt') final String? dateCreatedGmt,
    @JsonKey(name: 'date_modified') final String? dateModified,
    @JsonKey(name: 'date_modified_gmt') final String? dateModifiedGmt,
    required final String src,
    required final String name,
    final String? alt,
    final String? srcset,
    final String? sizes,
    final String? thumbnail,
  }) = _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'date_created')
  String? get dateCreated;
  @override
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified')
  String? get dateModified;
  @override
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt;
  @override
  String get src;
  @override
  String get name;
  @override
  String? get alt;
  @override
  String? get srcset;
  @override
  String? get sizes;
  @override
  String? get thumbnail;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) {
  return _ProductAttribute.fromJson(json);
}

/// @nodoc
mixin _$ProductAttribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  /// Serializes this ProductAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeCopyWith<ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCopyWith<$Res> {
  factory $ProductAttributeCopyWith(
    ProductAttribute value,
    $Res Function(ProductAttribute) then,
  ) = _$ProductAttributeCopyWithImpl<$Res, ProductAttribute>;
  @useResult
  $Res call({int id, String name, List<String> options});
}

/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res, $Val extends ProductAttribute>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? options = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductAttributeImplCopyWith<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  factory _$$ProductAttributeImplCopyWith(
    _$ProductAttributeImpl value,
    $Res Function(_$ProductAttributeImpl) then,
  ) = __$$ProductAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<String> options});
}

/// @nodoc
class __$$ProductAttributeImplCopyWithImpl<$Res>
    extends _$ProductAttributeCopyWithImpl<$Res, _$ProductAttributeImpl>
    implements _$$ProductAttributeImplCopyWith<$Res> {
  __$$ProductAttributeImplCopyWithImpl(
    _$ProductAttributeImpl _value,
    $Res Function(_$ProductAttributeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? options = null}) {
    return _then(
      _$ProductAttributeImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAttributeImpl implements _ProductAttribute {
  const _$ProductAttributeImpl({
    required this.id,
    required this.name,
    final List<String> options = const <String>[],
  }) : _options = options;

  factory _$ProductAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductAttribute(id: $id, name: $name, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      __$$ProductAttributeImplCopyWithImpl<_$ProductAttributeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeImplToJson(this);
  }
}

abstract class _ProductAttribute implements ProductAttribute {
  const factory _ProductAttribute({
    required final int id,
    required final String name,
    final List<String> options,
  }) = _$ProductAttributeImpl;

  factory _ProductAttribute.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get options;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDefaultAttribute _$ProductDefaultAttributeFromJson(
  Map<String, dynamic> json,
) {
  return _ProductDefaultAttribute.fromJson(json);
}

/// @nodoc
mixin _$ProductDefaultAttribute {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get option => throw _privateConstructorUsedError;

  /// Serializes this ProductDefaultAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDefaultAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDefaultAttributeCopyWith<ProductDefaultAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDefaultAttributeCopyWith<$Res> {
  factory $ProductDefaultAttributeCopyWith(
    ProductDefaultAttribute value,
    $Res Function(ProductDefaultAttribute) then,
  ) = _$ProductDefaultAttributeCopyWithImpl<$Res, ProductDefaultAttribute>;
  @useResult
  $Res call({int id, String name, String? option});
}

/// @nodoc
class _$ProductDefaultAttributeCopyWithImpl<
  $Res,
  $Val extends ProductDefaultAttribute
>
    implements $ProductDefaultAttributeCopyWith<$Res> {
  _$ProductDefaultAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDefaultAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? option = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            option: freezed == option
                ? _value.option
                : option // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDefaultAttributeImplCopyWith<$Res>
    implements $ProductDefaultAttributeCopyWith<$Res> {
  factory _$$ProductDefaultAttributeImplCopyWith(
    _$ProductDefaultAttributeImpl value,
    $Res Function(_$ProductDefaultAttributeImpl) then,
  ) = __$$ProductDefaultAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? option});
}

/// @nodoc
class __$$ProductDefaultAttributeImplCopyWithImpl<$Res>
    extends
        _$ProductDefaultAttributeCopyWithImpl<
          $Res,
          _$ProductDefaultAttributeImpl
        >
    implements _$$ProductDefaultAttributeImplCopyWith<$Res> {
  __$$ProductDefaultAttributeImplCopyWithImpl(
    _$ProductDefaultAttributeImpl _value,
    $Res Function(_$ProductDefaultAttributeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDefaultAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? option = freezed,
  }) {
    return _then(
      _$ProductDefaultAttributeImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        option: freezed == option
            ? _value.option
            : option // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDefaultAttributeImpl implements _ProductDefaultAttribute {
  const _$ProductDefaultAttributeImpl({
    required this.id,
    required this.name,
    this.option,
  });

  factory _$ProductDefaultAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDefaultAttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? option;

  @override
  String toString() {
    return 'ProductDefaultAttribute(id: $id, name: $name, option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDefaultAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.option, option) || other.option == option));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, option);

  /// Create a copy of ProductDefaultAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDefaultAttributeImplCopyWith<_$ProductDefaultAttributeImpl>
  get copyWith =>
      __$$ProductDefaultAttributeImplCopyWithImpl<
        _$ProductDefaultAttributeImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDefaultAttributeImplToJson(this);
  }
}

abstract class _ProductDefaultAttribute implements ProductDefaultAttribute {
  const factory _ProductDefaultAttribute({
    required final int id,
    required final String name,
    final String? option,
  }) = _$ProductDefaultAttributeImpl;

  factory _ProductDefaultAttribute.fromJson(Map<String, dynamic> json) =
      _$ProductDefaultAttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get option;

  /// Create a copy of ProductDefaultAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDefaultAttributeImplCopyWith<_$ProductDefaultAttributeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductDownload _$ProductDownloadFromJson(Map<String, dynamic> json) {
  return _ProductDownload.fromJson(json);
}

/// @nodoc
mixin _$ProductDownload {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  /// Serializes this ProductDownload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDownload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDownloadCopyWith<ProductDownload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDownloadCopyWith<$Res> {
  factory $ProductDownloadCopyWith(
    ProductDownload value,
    $Res Function(ProductDownload) then,
  ) = _$ProductDownloadCopyWithImpl<$Res, ProductDownload>;
  @useResult
  $Res call({String? id, String? name, String? file});
}

/// @nodoc
class _$ProductDownloadCopyWithImpl<$Res, $Val extends ProductDownload>
    implements $ProductDownloadCopyWith<$Res> {
  _$ProductDownloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDownload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDownloadImplCopyWith<$Res>
    implements $ProductDownloadCopyWith<$Res> {
  factory _$$ProductDownloadImplCopyWith(
    _$ProductDownloadImpl value,
    $Res Function(_$ProductDownloadImpl) then,
  ) = __$$ProductDownloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? file});
}

/// @nodoc
class __$$ProductDownloadImplCopyWithImpl<$Res>
    extends _$ProductDownloadCopyWithImpl<$Res, _$ProductDownloadImpl>
    implements _$$ProductDownloadImplCopyWith<$Res> {
  __$$ProductDownloadImplCopyWithImpl(
    _$ProductDownloadImpl _value,
    $Res Function(_$ProductDownloadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDownload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(
      _$ProductDownloadImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDownloadImpl implements _ProductDownload {
  const _$ProductDownloadImpl({this.id, this.name, this.file});

  factory _$ProductDownloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDownloadImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? file;

  @override
  String toString() {
    return 'ProductDownload(id: $id, name: $name, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDownloadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, file);

  /// Create a copy of ProductDownload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDownloadImplCopyWith<_$ProductDownloadImpl> get copyWith =>
      __$$ProductDownloadImplCopyWithImpl<_$ProductDownloadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDownloadImplToJson(this);
  }
}

abstract class _ProductDownload implements ProductDownload {
  const factory _ProductDownload({
    final String? id,
    final String? name,
    final String? file,
  }) = _$ProductDownloadImpl;

  factory _ProductDownload.fromJson(Map<String, dynamic> json) =
      _$ProductDownloadImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get file;

  /// Create a copy of ProductDownload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDownloadImplCopyWith<_$ProductDownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductMetaData _$ProductMetaDataFromJson(Map<String, dynamic> json) {
  return _ProductMetaData.fromJson(json);
}

/// @nodoc
mixin _$ProductMetaData {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  /// Serializes this ProductMetaData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductMetaDataCopyWith<ProductMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMetaDataCopyWith<$Res> {
  factory $ProductMetaDataCopyWith(
    ProductMetaData value,
    $Res Function(ProductMetaData) then,
  ) = _$ProductMetaDataCopyWithImpl<$Res, ProductMetaData>;
  @useResult
  $Res call({int id, String key, dynamic value});
}

/// @nodoc
class _$ProductMetaDataCopyWithImpl<$Res, $Val extends ProductMetaData>
    implements $ProductMetaDataCopyWith<$Res> {
  _$ProductMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? key = null, Object? value = freezed}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductMetaDataImplCopyWith<$Res>
    implements $ProductMetaDataCopyWith<$Res> {
  factory _$$ProductMetaDataImplCopyWith(
    _$ProductMetaDataImpl value,
    $Res Function(_$ProductMetaDataImpl) then,
  ) = __$$ProductMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, dynamic value});
}

/// @nodoc
class __$$ProductMetaDataImplCopyWithImpl<$Res>
    extends _$ProductMetaDataCopyWithImpl<$Res, _$ProductMetaDataImpl>
    implements _$$ProductMetaDataImplCopyWith<$Res> {
  __$$ProductMetaDataImplCopyWithImpl(
    _$ProductMetaDataImpl _value,
    $Res Function(_$ProductMetaDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? key = null, Object? value = freezed}) {
    return _then(
      _$ProductMetaDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductMetaDataImpl implements _ProductMetaData {
  const _$ProductMetaDataImpl({
    required this.id,
    required this.key,
    this.value,
  });

  factory _$ProductMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductMetaDataImplFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'ProductMetaData(id: $id, key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMetaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    key,
    const DeepCollectionEquality().hash(value),
  );

  /// Create a copy of ProductMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMetaDataImplCopyWith<_$ProductMetaDataImpl> get copyWith =>
      __$$ProductMetaDataImplCopyWithImpl<_$ProductMetaDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMetaDataImplToJson(this);
  }
}

abstract class _ProductMetaData implements ProductMetaData {
  const factory _ProductMetaData({
    required final int id,
    required final String key,
    final dynamic value,
  }) = _$ProductMetaDataImpl;

  factory _ProductMetaData.fromJson(Map<String, dynamic> json) =
      _$ProductMetaDataImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  dynamic get value;

  /// Create a copy of ProductMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductMetaDataImplCopyWith<_$ProductMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
