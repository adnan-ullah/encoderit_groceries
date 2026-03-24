import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel implements BaseModel {
  const factory OrderModel({
    required int id,
    @JsonKey(name: 'parent_id') @Default(0) int parentId,
    @JsonKey(name: 'customer_id') required int customerId,
    required String status,
    required String currency,
    String? version,
    @JsonKey(name: 'prices_include_tax') bool? pricesIncludeTax,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'discount_total') String? discountTotal,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'shipping_total') String? shippingTotal,
    @JsonKey(name: 'shipping_tax') String? shippingTax,
    @JsonKey(name: 'cart_tax') String? cartTax,
    required String total,
    @JsonKey(name: 'total_tax') String? totalTax,
    @JsonKey(name: 'order_key') String? orderKey,
    OrderBilling? billing,
    OrderShipping? shipping,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'payment_method_title') String? paymentMethodTitle,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'customer_ip_address') String? customerIpAddress,
    @JsonKey(name: 'customer_user_agent') String? customerUserAgent,
    @JsonKey(name: 'created_via') String? createdVia,
    @JsonKey(name: 'customer_note') String? customerNote,
    @JsonKey(name: 'date_completed') String? dateCompleted,
    @JsonKey(name: 'date_paid') String? datePaid,
    @JsonKey(name: 'cart_hash') String? cartHash,
    String? number,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
    @JsonKey(name: 'line_items') @Default([]) List<OrderLineItem> lineItems,
    @JsonKey(name: 'tax_lines') @Default([]) List<OrderTaxLine> taxLines,
    @JsonKey(name: 'shipping_lines')
    @Default([])
    List<OrderShippingLine> shippingLines,
    @JsonKey(name: 'fee_lines') @Default([]) List<OrderFeeLine> feeLines,
    @JsonKey(name: 'coupon_lines') @Default([]) List<OrderCouponLine> couponLines,
    @Default([]) List<OrderRefund> refunds,
    @JsonKey(name: 'payment_url') String? paymentUrl,
    @JsonKey(name: 'is_editable') bool? isEditable,
    @JsonKey(name: 'needs_payment') bool? needsPayment,
    @JsonKey(name: 'needs_processing') bool? needsProcessing,
    @JsonKey(name: 'date_created_gmt') String? dateCreatedGmt,
    @JsonKey(name: 'date_modified_gmt') String? dateModifiedGmt,
    @JsonKey(name: 'date_completed_gmt') String? dateCompletedGmt,
    @JsonKey(name: 'date_paid_gmt') String? datePaidGmt,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: '_links') OrderLinks? links,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderLineItem with _$OrderLineItem {
  const factory OrderLineItem({
    required int id,
    required String name,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'variation_id') int? variationId,
    @Default(0) int quantity,
    @JsonKey(name: 'tax_class') String? taxClass,
    String? subtotal,
    @JsonKey(name: 'subtotal_tax') String? subtotalTax,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    @Default([]) List<dynamic> taxes,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
    String? sku,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
    int? price,
    OrderLineItemImage? image,
    @JsonKey(name: 'parent_name') String? parentName,
  }) = _OrderLineItem;

  factory OrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemFromJson(json);
}

@freezed
class OrderLineItemImage with _$OrderLineItemImage {
  const factory OrderLineItemImage({
    required int id,
    required String src,
  }) = _OrderLineItemImage;

  factory OrderLineItemImage.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemImageFromJson(json);
}

@freezed
class OrderBilling with _$OrderBilling {
  const factory OrderBilling({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? company,
    @JsonKey(name: 'address_1') String? address1,
    @JsonKey(name: 'address_2') String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
    String? email,
    String? phone,
  }) = _OrderBilling;

  factory OrderBilling.fromJson(Map<String, dynamic> json) =>
      _$OrderBillingFromJson(json);
}

@freezed
class OrderShipping with _$OrderShipping {
  const factory OrderShipping({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? company,
    @JsonKey(name: 'address_1') String? address1,
    @JsonKey(name: 'address_2') String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
    String? phone,
  }) = _OrderShipping;

  factory OrderShipping.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingFromJson(json);
}

@freezed
class OrderMetaData with _$OrderMetaData {
  const factory OrderMetaData({
    required int id,
    required String key,
    dynamic value,
    @JsonKey(name: 'display_key') String? displayKey,
    @JsonKey(name: 'display_value') dynamic displayValue,
  }) = _OrderMetaData;

  factory OrderMetaData.fromJson(Map<String, dynamic> json) =>
      _$OrderMetaDataFromJson(json);
}

@freezed
class OrderTaxLine with _$OrderTaxLine {
  const factory OrderTaxLine({
    required int id,
    @JsonKey(name: 'rate_code') String? rateCode,
    @JsonKey(name: 'rate_id') int? rateId,
    String? label,
    bool? compound,
    @Default('0.00') String total,
    @JsonKey(name: 'shipping_tax_total') String? shippingTaxTotal,
    @JsonKey(name: 'rate_percent') double? ratePercent,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
  }) = _OrderTaxLine;

  factory OrderTaxLine.fromJson(Map<String, dynamic> json) =>
      _$OrderTaxLineFromJson(json);
}

@freezed
class OrderShippingLine with _$OrderShippingLine {
  const factory OrderShippingLine({
    required int id,
    @JsonKey(name: 'method_title') String? methodTitle,
    @JsonKey(name: 'method_id') String? methodId,
    @JsonKey(name: 'instance_id') String? instanceId,
    @Default('0.00') String total,
    @JsonKey(name: 'total_tax') String? totalTax,
    @Default([]) List<dynamic> taxes,
    @JsonKey(name: 'tax_status') String? taxStatus,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
  }) = _OrderShippingLine;

  factory OrderShippingLine.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingLineFromJson(json);
}

@freezed
class OrderFeeLine with _$OrderFeeLine {
  const factory OrderFeeLine({
    int? id,
    String? name,
    @JsonKey(name: 'tax_class') String? taxClass,
    @JsonKey(name: 'tax_status') String? taxStatus,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    @Default([]) List<dynamic> taxes,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
  }) = _OrderFeeLine;

  factory OrderFeeLine.fromJson(Map<String, dynamic> json) =>
      _$OrderFeeLineFromJson(json);
}

@freezed
class OrderCouponLine with _$OrderCouponLine {
  const factory OrderCouponLine({
    int? id,
    String? code,
    String? discount,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'meta_data') @Default([]) List<OrderMetaData> metaData,
  }) = _OrderCouponLine;

  factory OrderCouponLine.fromJson(Map<String, dynamic> json) =>
      _$OrderCouponLineFromJson(json);
}

@freezed
class OrderRefund with _$OrderRefund {
  const factory OrderRefund({
    required int id,
    String? reason,
    String? total,
  }) = _OrderRefund;

  factory OrderRefund.fromJson(Map<String, dynamic> json) =>
      _$OrderRefundFromJson(json);
}

@freezed
class OrderLinks with _$OrderLinks {
  const factory OrderLinks({
    @Default([]) List<OrderLinkItem> self,
    @Default([]) List<OrderLinkItem> collection,
    @JsonKey(name: 'email_templates')
    @Default([])
    List<OrderLinkItem> emailTemplates,
    @Default([]) List<OrderLinkItem> customer,
  }) = _OrderLinks;

  factory OrderLinks.fromJson(Map<String, dynamic> json) =>
      _$OrderLinksFromJson(json);
}

@freezed
class OrderLinkItem with _$OrderLinkItem {
  const factory OrderLinkItem({
    required String href,
    bool? embeddable,
    @JsonKey(name: 'targetHints') Map<String, dynamic>? targetHints,
  }) = _OrderLinkItem;

  factory OrderLinkItem.fromJson(Map<String, dynamic> json) =>
      _$OrderLinkItemFromJson(json);
}

