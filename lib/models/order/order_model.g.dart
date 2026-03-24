// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num?)?.toInt() ?? 0,
      customerId: (json['customer_id'] as num).toInt(),
      status: json['status'] as String,
      currency: json['currency'] as String,
      version: json['version'] as String?,
      pricesIncludeTax: json['prices_include_tax'] as bool?,
      dateCreated: json['date_created'] as String?,
      dateModified: json['date_modified'] as String?,
      discountTotal: json['discount_total'] as String?,
      discountTax: json['discount_tax'] as String?,
      shippingTotal: json['shipping_total'] as String?,
      shippingTax: json['shipping_tax'] as String?,
      cartTax: json['cart_tax'] as String?,
      total: json['total'] as String,
      totalTax: json['total_tax'] as String?,
      orderKey: json['order_key'] as String?,
      billing: json['billing'] == null
          ? null
          : OrderBilling.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : OrderShipping.fromJson(json['shipping'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      transactionId: json['transaction_id'] as String?,
      customerIpAddress: json['customer_ip_address'] as String?,
      customerUserAgent: json['customer_user_agent'] as String?,
      createdVia: json['created_via'] as String?,
      customerNote: json['customer_note'] as String?,
      dateCompleted: json['date_completed'] as String?,
      datePaid: json['date_paid'] as String?,
      cartHash: json['cart_hash'] as String?,
      number: json['number'] as String?,
      metaData:
          (json['meta_data'] as List<dynamic>?)
              ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lineItems:
          (json['line_items'] as List<dynamic>?)
              ?.map((e) => OrderLineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      taxLines:
          (json['tax_lines'] as List<dynamic>?)
              ?.map((e) => OrderTaxLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shippingLines:
          (json['shipping_lines'] as List<dynamic>?)
              ?.map(
                (e) => OrderShippingLine.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      feeLines:
          (json['fee_lines'] as List<dynamic>?)
              ?.map((e) => OrderFeeLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      couponLines:
          (json['coupon_lines'] as List<dynamic>?)
              ?.map((e) => OrderCouponLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      refunds:
          (json['refunds'] as List<dynamic>?)
              ?.map((e) => OrderRefund.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentUrl: json['payment_url'] as String?,
      isEditable: json['is_editable'] as bool?,
      needsPayment: json['needs_payment'] as bool?,
      needsProcessing: json['needs_processing'] as bool?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      dateCompletedGmt: json['date_completed_gmt'] as String?,
      datePaidGmt: json['date_paid_gmt'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      links: json['_links'] == null
          ? null
          : OrderLinks.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'customer_id': instance.customerId,
      'status': instance.status,
      'currency': instance.currency,
      'version': instance.version,
      'prices_include_tax': instance.pricesIncludeTax,
      'date_created': instance.dateCreated,
      'date_modified': instance.dateModified,
      'discount_total': instance.discountTotal,
      'discount_tax': instance.discountTax,
      'shipping_total': instance.shippingTotal,
      'shipping_tax': instance.shippingTax,
      'cart_tax': instance.cartTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'order_key': instance.orderKey,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'payment_method': instance.paymentMethod,
      'payment_method_title': instance.paymentMethodTitle,
      'transaction_id': instance.transactionId,
      'customer_ip_address': instance.customerIpAddress,
      'customer_user_agent': instance.customerUserAgent,
      'created_via': instance.createdVia,
      'customer_note': instance.customerNote,
      'date_completed': instance.dateCompleted,
      'date_paid': instance.datePaid,
      'cart_hash': instance.cartHash,
      'number': instance.number,
      'meta_data': instance.metaData,
      'line_items': instance.lineItems,
      'tax_lines': instance.taxLines,
      'shipping_lines': instance.shippingLines,
      'fee_lines': instance.feeLines,
      'coupon_lines': instance.couponLines,
      'refunds': instance.refunds,
      'payment_url': instance.paymentUrl,
      'is_editable': instance.isEditable,
      'needs_payment': instance.needsPayment,
      'needs_processing': instance.needsProcessing,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified_gmt': instance.dateModifiedGmt,
      'date_completed_gmt': instance.dateCompletedGmt,
      'date_paid_gmt': instance.datePaidGmt,
      'currency_symbol': instance.currencySymbol,
      '_links': instance.links,
    };

_$OrderLineItemImpl _$$OrderLineItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderLineItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      productId: (json['product_id'] as num?)?.toInt(),
      variationId: (json['variation_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      taxClass: json['tax_class'] as String?,
      subtotal: json['subtotal'] as String?,
      subtotalTax: json['subtotal_tax'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: json['taxes'] as List<dynamic>? ?? const [],
      metaData:
          (json['meta_data'] as List<dynamic>?)
              ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sku: json['sku'] as String?,
      globalUniqueId: json['global_unique_id'] as String?,
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] == null
          ? null
          : OrderLineItemImage.fromJson(json['image'] as Map<String, dynamic>),
      parentName: json['parent_name'] as String?,
    );

Map<String, dynamic> _$$OrderLineItemImplToJson(_$OrderLineItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'subtotal_tax': instance.subtotalTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': instance.metaData,
      'sku': instance.sku,
      'global_unique_id': instance.globalUniqueId,
      'price': instance.price,
      'image': instance.image,
      'parent_name': instance.parentName,
    };

_$OrderLineItemImageImpl _$$OrderLineItemImageImplFromJson(
  Map<String, dynamic> json,
) => _$OrderLineItemImageImpl(
  id: (json['id'] as num).toInt(),
  src: json['src'] as String,
);

Map<String, dynamic> _$$OrderLineItemImageImplToJson(
  _$OrderLineItemImageImpl instance,
) => <String, dynamic>{'id': instance.id, 'src': instance.src};

_$OrderBillingImpl _$$OrderBillingImplFromJson(Map<String, dynamic> json) =>
    _$OrderBillingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$OrderBillingImplToJson(_$OrderBillingImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_1': instance.address1,
      'address_2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
    };

_$OrderShippingImpl _$$OrderShippingImplFromJson(Map<String, dynamic> json) =>
    _$OrderShippingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$OrderShippingImplToJson(_$OrderShippingImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_1': instance.address1,
      'address_2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'phone': instance.phone,
    };

_$OrderMetaDataImpl _$$OrderMetaDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderMetaDataImpl(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      value: json['value'],
      displayKey: json['display_key'] as String?,
      displayValue: json['display_value'],
    );

Map<String, dynamic> _$$OrderMetaDataImplToJson(_$OrderMetaDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
      'display_key': instance.displayKey,
      'display_value': instance.displayValue,
    };

_$OrderTaxLineImpl _$$OrderTaxLineImplFromJson(Map<String, dynamic> json) =>
    _$OrderTaxLineImpl(
      id: (json['id'] as num).toInt(),
      rateCode: json['rate_code'] as String?,
      rateId: (json['rate_id'] as num?)?.toInt(),
      label: json['label'] as String?,
      compound: json['compound'] as bool?,
      total: json['total'] as String? ?? '0.00',
      shippingTaxTotal: json['shipping_tax_total'] as String?,
      ratePercent: (json['rate_percent'] as num?)?.toDouble(),
      metaData:
          (json['meta_data'] as List<dynamic>?)
              ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderTaxLineImplToJson(_$OrderTaxLineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate_code': instance.rateCode,
      'rate_id': instance.rateId,
      'label': instance.label,
      'compound': instance.compound,
      'total': instance.total,
      'shipping_tax_total': instance.shippingTaxTotal,
      'rate_percent': instance.ratePercent,
      'meta_data': instance.metaData,
    };

_$OrderShippingLineImpl _$$OrderShippingLineImplFromJson(
  Map<String, dynamic> json,
) => _$OrderShippingLineImpl(
  id: (json['id'] as num).toInt(),
  methodTitle: json['method_title'] as String?,
  methodId: json['method_id'] as String?,
  instanceId: json['instance_id'] as String?,
  total: json['total'] as String? ?? '0.00',
  totalTax: json['total_tax'] as String?,
  taxes: json['taxes'] as List<dynamic>? ?? const [],
  taxStatus: json['tax_status'] as String?,
  metaData:
      (json['meta_data'] as List<dynamic>?)
          ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderShippingLineImplToJson(
  _$OrderShippingLineImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'method_title': instance.methodTitle,
  'method_id': instance.methodId,
  'instance_id': instance.instanceId,
  'total': instance.total,
  'total_tax': instance.totalTax,
  'taxes': instance.taxes,
  'tax_status': instance.taxStatus,
  'meta_data': instance.metaData,
};

_$OrderFeeLineImpl _$$OrderFeeLineImplFromJson(Map<String, dynamic> json) =>
    _$OrderFeeLineImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      taxClass: json['tax_class'] as String?,
      taxStatus: json['tax_status'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: json['taxes'] as List<dynamic>? ?? const [],
      metaData:
          (json['meta_data'] as List<dynamic>?)
              ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderFeeLineImplToJson(_$OrderFeeLineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tax_class': instance.taxClass,
      'tax_status': instance.taxStatus,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': instance.metaData,
    };

_$OrderCouponLineImpl _$$OrderCouponLineImplFromJson(
  Map<String, dynamic> json,
) => _$OrderCouponLineImpl(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  discount: json['discount'] as String?,
  discountTax: json['discount_tax'] as String?,
  metaData:
      (json['meta_data'] as List<dynamic>?)
          ?.map((e) => OrderMetaData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$OrderCouponLineImplToJson(
  _$OrderCouponLineImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'discount': instance.discount,
  'discount_tax': instance.discountTax,
  'meta_data': instance.metaData,
};

_$OrderRefundImpl _$$OrderRefundImplFromJson(Map<String, dynamic> json) =>
    _$OrderRefundImpl(
      id: (json['id'] as num).toInt(),
      reason: json['reason'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$OrderRefundImplToJson(_$OrderRefundImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reason': instance.reason,
      'total': instance.total,
    };

_$OrderLinksImpl _$$OrderLinksImplFromJson(Map<String, dynamic> json) =>
    _$OrderLinksImpl(
      self:
          (json['self'] as List<dynamic>?)
              ?.map((e) => OrderLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      collection:
          (json['collection'] as List<dynamic>?)
              ?.map((e) => OrderLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      emailTemplates:
          (json['email_templates'] as List<dynamic>?)
              ?.map((e) => OrderLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      customer:
          (json['customer'] as List<dynamic>?)
              ?.map((e) => OrderLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderLinksImplToJson(_$OrderLinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'email_templates': instance.emailTemplates,
      'customer': instance.customer,
    };

_$OrderLinkItemImpl _$$OrderLinkItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderLinkItemImpl(
      href: json['href'] as String,
      embeddable: json['embeddable'] as bool?,
      targetHints: json['targetHints'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$OrderLinkItemImplToJson(_$OrderLinkItemImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'embeddable': instance.embeddable,
      'targetHints': instance.targetHints,
    };
