// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      permalink: json['permalink'] as String?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      catalogVisibility: json['catalog_visibility'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      sku: json['sku'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      onSale: json['on_sale'] as bool?,
      purchasable: json['purchasable'] as bool?,
      totalSales: (json['total_sales'] as num?)?.toInt(),
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      downloads:
          (json['downloads'] as List<dynamic>?)
              ?.map((e) => ProductDownload.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductDownload>[],
      downloadLimit: (json['download_limit'] as num?)?.toInt(),
      downloadExpiry: (json['download_expiry'] as num?)?.toInt(),
      externalUrl: json['external_url'] as String?,
      buttonText: json['button_text'] as String?,
      taxStatus: json['tax_status'] as String?,
      taxClass: json['tax_class'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockQuantity: (json['stock_quantity'] as num?)?.toInt(),
      backorders: json['backorders'] as String?,
      backordersAllowed: json['backorders_allowed'] as bool?,
      backordered: json['backordered'] as bool?,
      lowStockAmount: (json['low_stock_amount'] as num?)?.toInt(),
      soldIndividually: json['sold_individually'] as bool?,
      weight: json['weight'] as String?,
      dimensions: json['dimensions'] == null
          ? const ProductDimensions()
          : ProductDimensions.fromJson(
              json['dimensions'] as Map<String, dynamic>,
            ),
      shippingRequired: json['shipping_required'] as bool?,
      shippingTaxable: json['shipping_taxable'] as bool?,
      shippingClass: json['shipping_class'] as String?,
      shippingClassId: (json['shipping_class_id'] as num?)?.toInt(),
      reviewsAllowed: json['reviews_allowed'] as bool?,
      averageRating: json['average_rating'] as String?,
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      upsellIds:
          (json['upsell_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      crossSellIds:
          (json['cross_sell_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      parentId: (json['parent_id'] as num?)?.toInt(),
      purchaseNote: json['purchase_note'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductCategory>[],
      brands:
          (json['brands'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductCategory>[],
      tags:
          (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductTag>[],
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductImage>[],
      attributes:
          (json['attributes'] as List<dynamic>?)
              ?.map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductAttribute>[],
      defaultAttributes:
          (json['default_attributes'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ProductDefaultAttribute.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ProductDefaultAttribute>[],
      variations:
          (json['variations'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      groupedProducts:
          (json['grouped_products'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      menuOrder: (json['menu_order'] as num?)?.toInt(),
      priceHtml: json['price_html'] as String?,
      relatedIds:
          (json['related_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      metaData:
          (json['meta_data'] as List<dynamic>?)
              ?.map((e) => ProductMetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductMetaData>[],
      stockStatus: json['stock_status'] as String?,
      hasOptions: json['has_options'] as bool?,
      postPassword: json['post_password'] as String?,
      globalUniqueId: json['global_unique_id'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalUrl,
      'button_text': instance.buttonText,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'low_stock_amount': instance.lowStockAmount,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'upsell_ids': instance.upsellIds,
      'cross_sell_ids': instance.crossSellIds,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'brands': instance.brands,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'default_attributes': instance.defaultAttributes,
      'variations': instance.variations,
      'grouped_products': instance.groupedProducts,
      'menu_order': instance.menuOrder,
      'price_html': instance.priceHtml,
      'related_ids': instance.relatedIds,
      'meta_data': instance.metaData,
      'stock_status': instance.stockStatus,
      'has_options': instance.hasOptions,
      'post_password': instance.postPassword,
      'global_unique_id': instance.globalUniqueId,
    };

_$ProductDimensionsImpl _$$ProductDimensionsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDimensionsImpl(
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
);

Map<String, dynamic> _$$ProductDimensionsImplToJson(
  _$ProductDimensionsImpl instance,
) => <String, dynamic>{
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
};

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
  Map<String, dynamic> json,
) => _$ProductCategoryImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
);

Map<String, dynamic> _$$ProductCategoryImplToJson(
  _$ProductCategoryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
};

_$ProductTagImpl _$$ProductTagImplFromJson(Map<String, dynamic> json) =>
    _$ProductTagImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$ProductTagImplToJson(_$ProductTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      id: (json['id'] as num).toInt(),
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      src: json['src'] as String,
      name: json['name'] as String,
      alt: json['alt'] as String?,
      srcset: json['srcset'] as String?,
      sizes: json['sizes'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
      'srcset': instance.srcset,
      'sizes': instance.sizes,
      'thumbnail': instance.thumbnail,
    };

_$ProductAttributeImpl _$$ProductAttributeImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  options:
      (json['options'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ProductAttributeImplToJson(
  _$ProductAttributeImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'options': instance.options,
};

_$ProductDefaultAttributeImpl _$$ProductDefaultAttributeImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDefaultAttributeImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  option: json['option'] as String?,
);

Map<String, dynamic> _$$ProductDefaultAttributeImplToJson(
  _$ProductDefaultAttributeImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'option': instance.option,
};

_$ProductDownloadImpl _$$ProductDownloadImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDownloadImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  file: json['file'] as String?,
);

Map<String, dynamic> _$$ProductDownloadImplToJson(
  _$ProductDownloadImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'file': instance.file,
};

_$ProductMetaDataImpl _$$ProductMetaDataImplFromJson(
  Map<String, dynamic> json,
) => _$ProductMetaDataImpl(
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  value: json['value'],
);

Map<String, dynamic> _$$ProductMetaDataImplToJson(
  _$ProductMetaDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'value': instance.value,
};
