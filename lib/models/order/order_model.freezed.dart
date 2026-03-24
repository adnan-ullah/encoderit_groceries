// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'prices_include_tax')
  bool? get pricesIncludeTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified')
  String? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_total')
  String? get discountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_tax')
  String? get discountTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_total')
  String? get shippingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_tax')
  String? get shippingTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_tax')
  String? get cartTax => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_key')
  String? get orderKey => throw _privateConstructorUsedError;
  OrderBilling? get billing => throw _privateConstructorUsedError;
  OrderShipping? get shipping => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_title')
  String? get paymentMethodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_ip_address')
  String? get customerIpAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_user_agent')
  String? get customerUserAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_via')
  String? get createdVia => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_note')
  String? get customerNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_completed')
  String? get dateCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_paid')
  String? get datePaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_hash')
  String? get cartHash => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_items')
  List<OrderLineItem> get lineItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_lines')
  List<OrderTaxLine> get taxLines => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_lines')
  List<OrderShippingLine> get shippingLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_lines')
  List<OrderFeeLine> get feeLines => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_lines')
  List<OrderCouponLine> get couponLines => throw _privateConstructorUsedError;
  List<OrderRefund> get refunds => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_url')
  String? get paymentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_editable')
  bool? get isEditable => throw _privateConstructorUsedError;
  @JsonKey(name: 'needs_payment')
  bool? get needsPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'needs_processing')
  bool? get needsProcessing => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_completed_gmt')
  String? get dateCompletedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_paid_gmt')
  String? get datePaidGmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  OrderLinks? get links => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
    OrderModel value,
    $Res Function(OrderModel) then,
  ) = _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'parent_id') int parentId,
    @JsonKey(name: 'customer_id') int customerId,
    String status,
    String currency,
    String? version,
    @JsonKey(name: 'prices_include_tax') bool? pricesIncludeTax,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'discount_total') String? discountTotal,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'shipping_total') String? shippingTotal,
    @JsonKey(name: 'shipping_tax') String? shippingTax,
    @JsonKey(name: 'cart_tax') String? cartTax,
    String total,
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
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
    @JsonKey(name: 'line_items') List<OrderLineItem> lineItems,
    @JsonKey(name: 'tax_lines') List<OrderTaxLine> taxLines,
    @JsonKey(name: 'shipping_lines') List<OrderShippingLine> shippingLines,
    @JsonKey(name: 'fee_lines') List<OrderFeeLine> feeLines,
    @JsonKey(name: 'coupon_lines') List<OrderCouponLine> couponLines,
    List<OrderRefund> refunds,
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
  });

  $OrderBillingCopyWith<$Res>? get billing;
  $OrderShippingCopyWith<$Res>? get shipping;
  $OrderLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? customerId = null,
    Object? status = null,
    Object? currency = null,
    Object? version = freezed,
    Object? pricesIncludeTax = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? discountTotal = freezed,
    Object? discountTax = freezed,
    Object? shippingTotal = freezed,
    Object? shippingTax = freezed,
    Object? cartTax = freezed,
    Object? total = null,
    Object? totalTax = freezed,
    Object? orderKey = freezed,
    Object? billing = freezed,
    Object? shipping = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodTitle = freezed,
    Object? transactionId = freezed,
    Object? customerIpAddress = freezed,
    Object? customerUserAgent = freezed,
    Object? createdVia = freezed,
    Object? customerNote = freezed,
    Object? dateCompleted = freezed,
    Object? datePaid = freezed,
    Object? cartHash = freezed,
    Object? number = freezed,
    Object? metaData = null,
    Object? lineItems = null,
    Object? taxLines = null,
    Object? shippingLines = null,
    Object? feeLines = null,
    Object? couponLines = null,
    Object? refunds = null,
    Object? paymentUrl = freezed,
    Object? isEditable = freezed,
    Object? needsPayment = freezed,
    Object? needsProcessing = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModifiedGmt = freezed,
    Object? dateCompletedGmt = freezed,
    Object? datePaidGmt = freezed,
    Object? currencySymbol = freezed,
    Object? links = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int,
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            pricesIncludeTax: freezed == pricesIncludeTax
                ? _value.pricesIncludeTax
                : pricesIncludeTax // ignore: cast_nullable_to_non_nullable
                      as bool?,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModified: freezed == dateModified
                ? _value.dateModified
                : dateModified // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountTotal: freezed == discountTotal
                ? _value.discountTotal
                : discountTotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountTax: freezed == discountTax
                ? _value.discountTax
                : discountTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingTotal: freezed == shippingTotal
                ? _value.shippingTotal
                : shippingTotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingTax: freezed == shippingTax
                ? _value.shippingTax
                : shippingTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            cartTax: freezed == cartTax
                ? _value.cartTax
                : cartTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String,
            totalTax: freezed == totalTax
                ? _value.totalTax
                : totalTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderKey: freezed == orderKey
                ? _value.orderKey
                : orderKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            billing: freezed == billing
                ? _value.billing
                : billing // ignore: cast_nullable_to_non_nullable
                      as OrderBilling?,
            shipping: freezed == shipping
                ? _value.shipping
                : shipping // ignore: cast_nullable_to_non_nullable
                      as OrderShipping?,
            paymentMethod: freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentMethodTitle: freezed == paymentMethodTitle
                ? _value.paymentMethodTitle
                : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            transactionId: freezed == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerIpAddress: freezed == customerIpAddress
                ? _value.customerIpAddress
                : customerIpAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerUserAgent: freezed == customerUserAgent
                ? _value.customerUserAgent
                : customerUserAgent // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdVia: freezed == createdVia
                ? _value.createdVia
                : createdVia // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerNote: freezed == customerNote
                ? _value.customerNote
                : customerNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCompleted: freezed == dateCompleted
                ? _value.dateCompleted
                : dateCompleted // ignore: cast_nullable_to_non_nullable
                      as String?,
            datePaid: freezed == datePaid
                ? _value.datePaid
                : datePaid // ignore: cast_nullable_to_non_nullable
                      as String?,
            cartHash: freezed == cartHash
                ? _value.cartHash
                : cartHash // ignore: cast_nullable_to_non_nullable
                      as String?,
            number: freezed == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
            lineItems: null == lineItems
                ? _value.lineItems
                : lineItems // ignore: cast_nullable_to_non_nullable
                      as List<OrderLineItem>,
            taxLines: null == taxLines
                ? _value.taxLines
                : taxLines // ignore: cast_nullable_to_non_nullable
                      as List<OrderTaxLine>,
            shippingLines: null == shippingLines
                ? _value.shippingLines
                : shippingLines // ignore: cast_nullable_to_non_nullable
                      as List<OrderShippingLine>,
            feeLines: null == feeLines
                ? _value.feeLines
                : feeLines // ignore: cast_nullable_to_non_nullable
                      as List<OrderFeeLine>,
            couponLines: null == couponLines
                ? _value.couponLines
                : couponLines // ignore: cast_nullable_to_non_nullable
                      as List<OrderCouponLine>,
            refunds: null == refunds
                ? _value.refunds
                : refunds // ignore: cast_nullable_to_non_nullable
                      as List<OrderRefund>,
            paymentUrl: freezed == paymentUrl
                ? _value.paymentUrl
                : paymentUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isEditable: freezed == isEditable
                ? _value.isEditable
                : isEditable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            needsPayment: freezed == needsPayment
                ? _value.needsPayment
                : needsPayment // ignore: cast_nullable_to_non_nullable
                      as bool?,
            needsProcessing: freezed == needsProcessing
                ? _value.needsProcessing
                : needsProcessing // ignore: cast_nullable_to_non_nullable
                      as bool?,
            dateCreatedGmt: freezed == dateCreatedGmt
                ? _value.dateCreatedGmt
                : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModifiedGmt: freezed == dateModifiedGmt
                ? _value.dateModifiedGmt
                : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCompletedGmt: freezed == dateCompletedGmt
                ? _value.dateCompletedGmt
                : dateCompletedGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            datePaidGmt: freezed == datePaidGmt
                ? _value.datePaidGmt
                : datePaidGmt // ignore: cast_nullable_to_non_nullable
                      as String?,
            currencySymbol: freezed == currencySymbol
                ? _value.currencySymbol
                : currencySymbol // ignore: cast_nullable_to_non_nullable
                      as String?,
            links: freezed == links
                ? _value.links
                : links // ignore: cast_nullable_to_non_nullable
                      as OrderLinks?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderBillingCopyWith<$Res>? get billing {
    if (_value.billing == null) {
      return null;
    }

    return $OrderBillingCopyWith<$Res>(_value.billing!, (value) {
      return _then(_value.copyWith(billing: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderShippingCopyWith<$Res>? get shipping {
    if (_value.shipping == null) {
      return null;
    }

    return $OrderShippingCopyWith<$Res>(_value.shipping!, (value) {
      return _then(_value.copyWith(shipping: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $OrderLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
    _$OrderModelImpl value,
    $Res Function(_$OrderModelImpl) then,
  ) = __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'parent_id') int parentId,
    @JsonKey(name: 'customer_id') int customerId,
    String status,
    String currency,
    String? version,
    @JsonKey(name: 'prices_include_tax') bool? pricesIncludeTax,
    @JsonKey(name: 'date_created') String? dateCreated,
    @JsonKey(name: 'date_modified') String? dateModified,
    @JsonKey(name: 'discount_total') String? discountTotal,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'shipping_total') String? shippingTotal,
    @JsonKey(name: 'shipping_tax') String? shippingTax,
    @JsonKey(name: 'cart_tax') String? cartTax,
    String total,
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
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
    @JsonKey(name: 'line_items') List<OrderLineItem> lineItems,
    @JsonKey(name: 'tax_lines') List<OrderTaxLine> taxLines,
    @JsonKey(name: 'shipping_lines') List<OrderShippingLine> shippingLines,
    @JsonKey(name: 'fee_lines') List<OrderFeeLine> feeLines,
    @JsonKey(name: 'coupon_lines') List<OrderCouponLine> couponLines,
    List<OrderRefund> refunds,
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
  });

  @override
  $OrderBillingCopyWith<$Res>? get billing;
  @override
  $OrderShippingCopyWith<$Res>? get shipping;
  @override
  $OrderLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
    _$OrderModelImpl _value,
    $Res Function(_$OrderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? customerId = null,
    Object? status = null,
    Object? currency = null,
    Object? version = freezed,
    Object? pricesIncludeTax = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? discountTotal = freezed,
    Object? discountTax = freezed,
    Object? shippingTotal = freezed,
    Object? shippingTax = freezed,
    Object? cartTax = freezed,
    Object? total = null,
    Object? totalTax = freezed,
    Object? orderKey = freezed,
    Object? billing = freezed,
    Object? shipping = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodTitle = freezed,
    Object? transactionId = freezed,
    Object? customerIpAddress = freezed,
    Object? customerUserAgent = freezed,
    Object? createdVia = freezed,
    Object? customerNote = freezed,
    Object? dateCompleted = freezed,
    Object? datePaid = freezed,
    Object? cartHash = freezed,
    Object? number = freezed,
    Object? metaData = null,
    Object? lineItems = null,
    Object? taxLines = null,
    Object? shippingLines = null,
    Object? feeLines = null,
    Object? couponLines = null,
    Object? refunds = null,
    Object? paymentUrl = freezed,
    Object? isEditable = freezed,
    Object? needsPayment = freezed,
    Object? needsProcessing = freezed,
    Object? dateCreatedGmt = freezed,
    Object? dateModifiedGmt = freezed,
    Object? dateCompletedGmt = freezed,
    Object? datePaidGmt = freezed,
    Object? currencySymbol = freezed,
    Object? links = freezed,
  }) {
    return _then(
      _$OrderModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int,
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        pricesIncludeTax: freezed == pricesIncludeTax
            ? _value.pricesIncludeTax
            : pricesIncludeTax // ignore: cast_nullable_to_non_nullable
                  as bool?,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModified: freezed == dateModified
            ? _value.dateModified
            : dateModified // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountTotal: freezed == discountTotal
            ? _value.discountTotal
            : discountTotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountTax: freezed == discountTax
            ? _value.discountTax
            : discountTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingTotal: freezed == shippingTotal
            ? _value.shippingTotal
            : shippingTotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingTax: freezed == shippingTax
            ? _value.shippingTax
            : shippingTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        cartTax: freezed == cartTax
            ? _value.cartTax
            : cartTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String,
        totalTax: freezed == totalTax
            ? _value.totalTax
            : totalTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderKey: freezed == orderKey
            ? _value.orderKey
            : orderKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        billing: freezed == billing
            ? _value.billing
            : billing // ignore: cast_nullable_to_non_nullable
                  as OrderBilling?,
        shipping: freezed == shipping
            ? _value.shipping
            : shipping // ignore: cast_nullable_to_non_nullable
                  as OrderShipping?,
        paymentMethod: freezed == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentMethodTitle: freezed == paymentMethodTitle
            ? _value.paymentMethodTitle
            : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        transactionId: freezed == transactionId
            ? _value.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerIpAddress: freezed == customerIpAddress
            ? _value.customerIpAddress
            : customerIpAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerUserAgent: freezed == customerUserAgent
            ? _value.customerUserAgent
            : customerUserAgent // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdVia: freezed == createdVia
            ? _value.createdVia
            : createdVia // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerNote: freezed == customerNote
            ? _value.customerNote
            : customerNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCompleted: freezed == dateCompleted
            ? _value.dateCompleted
            : dateCompleted // ignore: cast_nullable_to_non_nullable
                  as String?,
        datePaid: freezed == datePaid
            ? _value.datePaid
            : datePaid // ignore: cast_nullable_to_non_nullable
                  as String?,
        cartHash: freezed == cartHash
            ? _value.cartHash
            : cartHash // ignore: cast_nullable_to_non_nullable
                  as String?,
        number: freezed == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
        lineItems: null == lineItems
            ? _value._lineItems
            : lineItems // ignore: cast_nullable_to_non_nullable
                  as List<OrderLineItem>,
        taxLines: null == taxLines
            ? _value._taxLines
            : taxLines // ignore: cast_nullable_to_non_nullable
                  as List<OrderTaxLine>,
        shippingLines: null == shippingLines
            ? _value._shippingLines
            : shippingLines // ignore: cast_nullable_to_non_nullable
                  as List<OrderShippingLine>,
        feeLines: null == feeLines
            ? _value._feeLines
            : feeLines // ignore: cast_nullable_to_non_nullable
                  as List<OrderFeeLine>,
        couponLines: null == couponLines
            ? _value._couponLines
            : couponLines // ignore: cast_nullable_to_non_nullable
                  as List<OrderCouponLine>,
        refunds: null == refunds
            ? _value._refunds
            : refunds // ignore: cast_nullable_to_non_nullable
                  as List<OrderRefund>,
        paymentUrl: freezed == paymentUrl
            ? _value.paymentUrl
            : paymentUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isEditable: freezed == isEditable
            ? _value.isEditable
            : isEditable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        needsPayment: freezed == needsPayment
            ? _value.needsPayment
            : needsPayment // ignore: cast_nullable_to_non_nullable
                  as bool?,
        needsProcessing: freezed == needsProcessing
            ? _value.needsProcessing
            : needsProcessing // ignore: cast_nullable_to_non_nullable
                  as bool?,
        dateCreatedGmt: freezed == dateCreatedGmt
            ? _value.dateCreatedGmt
            : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModifiedGmt: freezed == dateModifiedGmt
            ? _value.dateModifiedGmt
            : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCompletedGmt: freezed == dateCompletedGmt
            ? _value.dateCompletedGmt
            : dateCompletedGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        datePaidGmt: freezed == datePaidGmt
            ? _value.datePaidGmt
            : datePaidGmt // ignore: cast_nullable_to_non_nullable
                  as String?,
        currencySymbol: freezed == currencySymbol
            ? _value.currencySymbol
            : currencySymbol // ignore: cast_nullable_to_non_nullable
                  as String?,
        links: freezed == links
            ? _value.links
            : links // ignore: cast_nullable_to_non_nullable
                  as OrderLinks?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl({
    required this.id,
    @JsonKey(name: 'parent_id') this.parentId = 0,
    @JsonKey(name: 'customer_id') required this.customerId,
    required this.status,
    required this.currency,
    this.version,
    @JsonKey(name: 'prices_include_tax') this.pricesIncludeTax,
    @JsonKey(name: 'date_created') this.dateCreated,
    @JsonKey(name: 'date_modified') this.dateModified,
    @JsonKey(name: 'discount_total') this.discountTotal,
    @JsonKey(name: 'discount_tax') this.discountTax,
    @JsonKey(name: 'shipping_total') this.shippingTotal,
    @JsonKey(name: 'shipping_tax') this.shippingTax,
    @JsonKey(name: 'cart_tax') this.cartTax,
    required this.total,
    @JsonKey(name: 'total_tax') this.totalTax,
    @JsonKey(name: 'order_key') this.orderKey,
    this.billing,
    this.shipping,
    @JsonKey(name: 'payment_method') this.paymentMethod,
    @JsonKey(name: 'payment_method_title') this.paymentMethodTitle,
    @JsonKey(name: 'transaction_id') this.transactionId,
    @JsonKey(name: 'customer_ip_address') this.customerIpAddress,
    @JsonKey(name: 'customer_user_agent') this.customerUserAgent,
    @JsonKey(name: 'created_via') this.createdVia,
    @JsonKey(name: 'customer_note') this.customerNote,
    @JsonKey(name: 'date_completed') this.dateCompleted,
    @JsonKey(name: 'date_paid') this.datePaid,
    @JsonKey(name: 'cart_hash') this.cartHash,
    this.number,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
    @JsonKey(name: 'line_items') final List<OrderLineItem> lineItems = const [],
    @JsonKey(name: 'tax_lines') final List<OrderTaxLine> taxLines = const [],
    @JsonKey(name: 'shipping_lines')
    final List<OrderShippingLine> shippingLines = const [],
    @JsonKey(name: 'fee_lines') final List<OrderFeeLine> feeLines = const [],
    @JsonKey(name: 'coupon_lines')
    final List<OrderCouponLine> couponLines = const [],
    final List<OrderRefund> refunds = const [],
    @JsonKey(name: 'payment_url') this.paymentUrl,
    @JsonKey(name: 'is_editable') this.isEditable,
    @JsonKey(name: 'needs_payment') this.needsPayment,
    @JsonKey(name: 'needs_processing') this.needsProcessing,
    @JsonKey(name: 'date_created_gmt') this.dateCreatedGmt,
    @JsonKey(name: 'date_modified_gmt') this.dateModifiedGmt,
    @JsonKey(name: 'date_completed_gmt') this.dateCompletedGmt,
    @JsonKey(name: 'date_paid_gmt') this.datePaidGmt,
    @JsonKey(name: 'currency_symbol') this.currencySymbol,
    @JsonKey(name: '_links') this.links,
  }) : _metaData = metaData,
       _lineItems = lineItems,
       _taxLines = taxLines,
       _shippingLines = shippingLines,
       _feeLines = feeLines,
       _couponLines = couponLines,
       _refunds = refunds;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final int parentId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  final String status;
  @override
  final String currency;
  @override
  final String? version;
  @override
  @JsonKey(name: 'prices_include_tax')
  final bool? pricesIncludeTax;
  @override
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @override
  @JsonKey(name: 'date_modified')
  final String? dateModified;
  @override
  @JsonKey(name: 'discount_total')
  final String? discountTotal;
  @override
  @JsonKey(name: 'discount_tax')
  final String? discountTax;
  @override
  @JsonKey(name: 'shipping_total')
  final String? shippingTotal;
  @override
  @JsonKey(name: 'shipping_tax')
  final String? shippingTax;
  @override
  @JsonKey(name: 'cart_tax')
  final String? cartTax;
  @override
  final String total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  @override
  @JsonKey(name: 'order_key')
  final String? orderKey;
  @override
  final OrderBilling? billing;
  @override
  final OrderShipping? shipping;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_method_title')
  final String? paymentMethodTitle;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  @JsonKey(name: 'customer_ip_address')
  final String? customerIpAddress;
  @override
  @JsonKey(name: 'customer_user_agent')
  final String? customerUserAgent;
  @override
  @JsonKey(name: 'created_via')
  final String? createdVia;
  @override
  @JsonKey(name: 'customer_note')
  final String? customerNote;
  @override
  @JsonKey(name: 'date_completed')
  final String? dateCompleted;
  @override
  @JsonKey(name: 'date_paid')
  final String? datePaid;
  @override
  @JsonKey(name: 'cart_hash')
  final String? cartHash;
  @override
  final String? number;
  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  final List<OrderLineItem> _lineItems;
  @override
  @JsonKey(name: 'line_items')
  List<OrderLineItem> get lineItems {
    if (_lineItems is EqualUnmodifiableListView) return _lineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineItems);
  }

  final List<OrderTaxLine> _taxLines;
  @override
  @JsonKey(name: 'tax_lines')
  List<OrderTaxLine> get taxLines {
    if (_taxLines is EqualUnmodifiableListView) return _taxLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxLines);
  }

  final List<OrderShippingLine> _shippingLines;
  @override
  @JsonKey(name: 'shipping_lines')
  List<OrderShippingLine> get shippingLines {
    if (_shippingLines is EqualUnmodifiableListView) return _shippingLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippingLines);
  }

  final List<OrderFeeLine> _feeLines;
  @override
  @JsonKey(name: 'fee_lines')
  List<OrderFeeLine> get feeLines {
    if (_feeLines is EqualUnmodifiableListView) return _feeLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeLines);
  }

  final List<OrderCouponLine> _couponLines;
  @override
  @JsonKey(name: 'coupon_lines')
  List<OrderCouponLine> get couponLines {
    if (_couponLines is EqualUnmodifiableListView) return _couponLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_couponLines);
  }

  final List<OrderRefund> _refunds;
  @override
  @JsonKey()
  List<OrderRefund> get refunds {
    if (_refunds is EqualUnmodifiableListView) return _refunds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_refunds);
  }

  @override
  @JsonKey(name: 'payment_url')
  final String? paymentUrl;
  @override
  @JsonKey(name: 'is_editable')
  final bool? isEditable;
  @override
  @JsonKey(name: 'needs_payment')
  final bool? needsPayment;
  @override
  @JsonKey(name: 'needs_processing')
  final bool? needsProcessing;
  @override
  @JsonKey(name: 'date_created_gmt')
  final String? dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified_gmt')
  final String? dateModifiedGmt;
  @override
  @JsonKey(name: 'date_completed_gmt')
  final String? dateCompletedGmt;
  @override
  @JsonKey(name: 'date_paid_gmt')
  final String? datePaidGmt;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: '_links')
  final OrderLinks? links;

  @override
  String toString() {
    return 'OrderModel(id: $id, parentId: $parentId, customerId: $customerId, status: $status, currency: $currency, version: $version, pricesIncludeTax: $pricesIncludeTax, dateCreated: $dateCreated, dateModified: $dateModified, discountTotal: $discountTotal, discountTax: $discountTax, shippingTotal: $shippingTotal, shippingTax: $shippingTax, cartTax: $cartTax, total: $total, totalTax: $totalTax, orderKey: $orderKey, billing: $billing, shipping: $shipping, paymentMethod: $paymentMethod, paymentMethodTitle: $paymentMethodTitle, transactionId: $transactionId, customerIpAddress: $customerIpAddress, customerUserAgent: $customerUserAgent, createdVia: $createdVia, customerNote: $customerNote, dateCompleted: $dateCompleted, datePaid: $datePaid, cartHash: $cartHash, number: $number, metaData: $metaData, lineItems: $lineItems, taxLines: $taxLines, shippingLines: $shippingLines, feeLines: $feeLines, couponLines: $couponLines, refunds: $refunds, paymentUrl: $paymentUrl, isEditable: $isEditable, needsPayment: $needsPayment, needsProcessing: $needsProcessing, dateCreatedGmt: $dateCreatedGmt, dateModifiedGmt: $dateModifiedGmt, dateCompletedGmt: $dateCompletedGmt, datePaidGmt: $datePaidGmt, currencySymbol: $currencySymbol, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.pricesIncludeTax, pricesIncludeTax) ||
                other.pricesIncludeTax == pricesIncludeTax) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.discountTotal, discountTotal) ||
                other.discountTotal == discountTotal) &&
            (identical(other.discountTax, discountTax) ||
                other.discountTax == discountTax) &&
            (identical(other.shippingTotal, shippingTotal) ||
                other.shippingTotal == shippingTotal) &&
            (identical(other.shippingTax, shippingTax) ||
                other.shippingTax == shippingTax) &&
            (identical(other.cartTax, cartTax) || other.cartTax == cartTax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.orderKey, orderKey) ||
                other.orderKey == orderKey) &&
            (identical(other.billing, billing) || other.billing == billing) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodTitle, paymentMethodTitle) ||
                other.paymentMethodTitle == paymentMethodTitle) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.customerIpAddress, customerIpAddress) ||
                other.customerIpAddress == customerIpAddress) &&
            (identical(other.customerUserAgent, customerUserAgent) ||
                other.customerUserAgent == customerUserAgent) &&
            (identical(other.createdVia, createdVia) ||
                other.createdVia == createdVia) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.dateCompleted, dateCompleted) ||
                other.dateCompleted == dateCompleted) &&
            (identical(other.datePaid, datePaid) ||
                other.datePaid == datePaid) &&
            (identical(other.cartHash, cartHash) ||
                other.cartHash == cartHash) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            const DeepCollectionEquality().equals(
              other._lineItems,
              _lineItems,
            ) &&
            const DeepCollectionEquality().equals(other._taxLines, _taxLines) &&
            const DeepCollectionEquality().equals(
              other._shippingLines,
              _shippingLines,
            ) &&
            const DeepCollectionEquality().equals(other._feeLines, _feeLines) &&
            const DeepCollectionEquality().equals(
              other._couponLines,
              _couponLines,
            ) &&
            const DeepCollectionEquality().equals(other._refunds, _refunds) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
            (identical(other.needsPayment, needsPayment) ||
                other.needsPayment == needsPayment) &&
            (identical(other.needsProcessing, needsProcessing) ||
                other.needsProcessing == needsProcessing) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.dateCompletedGmt, dateCompletedGmt) ||
                other.dateCompletedGmt == dateCompletedGmt) &&
            (identical(other.datePaidGmt, datePaidGmt) ||
                other.datePaidGmt == datePaidGmt) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    parentId,
    customerId,
    status,
    currency,
    version,
    pricesIncludeTax,
    dateCreated,
    dateModified,
    discountTotal,
    discountTax,
    shippingTotal,
    shippingTax,
    cartTax,
    total,
    totalTax,
    orderKey,
    billing,
    shipping,
    paymentMethod,
    paymentMethodTitle,
    transactionId,
    customerIpAddress,
    customerUserAgent,
    createdVia,
    customerNote,
    dateCompleted,
    datePaid,
    cartHash,
    number,
    const DeepCollectionEquality().hash(_metaData),
    const DeepCollectionEquality().hash(_lineItems),
    const DeepCollectionEquality().hash(_taxLines),
    const DeepCollectionEquality().hash(_shippingLines),
    const DeepCollectionEquality().hash(_feeLines),
    const DeepCollectionEquality().hash(_couponLines),
    const DeepCollectionEquality().hash(_refunds),
    paymentUrl,
    isEditable,
    needsPayment,
    needsProcessing,
    dateCreatedGmt,
    dateModifiedGmt,
    dateCompletedGmt,
    datePaidGmt,
    currencySymbol,
    links,
  ]);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(this);
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel({
    required final int id,
    @JsonKey(name: 'parent_id') final int parentId,
    @JsonKey(name: 'customer_id') required final int customerId,
    required final String status,
    required final String currency,
    final String? version,
    @JsonKey(name: 'prices_include_tax') final bool? pricesIncludeTax,
    @JsonKey(name: 'date_created') final String? dateCreated,
    @JsonKey(name: 'date_modified') final String? dateModified,
    @JsonKey(name: 'discount_total') final String? discountTotal,
    @JsonKey(name: 'discount_tax') final String? discountTax,
    @JsonKey(name: 'shipping_total') final String? shippingTotal,
    @JsonKey(name: 'shipping_tax') final String? shippingTax,
    @JsonKey(name: 'cart_tax') final String? cartTax,
    required final String total,
    @JsonKey(name: 'total_tax') final String? totalTax,
    @JsonKey(name: 'order_key') final String? orderKey,
    final OrderBilling? billing,
    final OrderShipping? shipping,
    @JsonKey(name: 'payment_method') final String? paymentMethod,
    @JsonKey(name: 'payment_method_title') final String? paymentMethodTitle,
    @JsonKey(name: 'transaction_id') final String? transactionId,
    @JsonKey(name: 'customer_ip_address') final String? customerIpAddress,
    @JsonKey(name: 'customer_user_agent') final String? customerUserAgent,
    @JsonKey(name: 'created_via') final String? createdVia,
    @JsonKey(name: 'customer_note') final String? customerNote,
    @JsonKey(name: 'date_completed') final String? dateCompleted,
    @JsonKey(name: 'date_paid') final String? datePaid,
    @JsonKey(name: 'cart_hash') final String? cartHash,
    final String? number,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
    @JsonKey(name: 'line_items') final List<OrderLineItem> lineItems,
    @JsonKey(name: 'tax_lines') final List<OrderTaxLine> taxLines,
    @JsonKey(name: 'shipping_lines')
    final List<OrderShippingLine> shippingLines,
    @JsonKey(name: 'fee_lines') final List<OrderFeeLine> feeLines,
    @JsonKey(name: 'coupon_lines') final List<OrderCouponLine> couponLines,
    final List<OrderRefund> refunds,
    @JsonKey(name: 'payment_url') final String? paymentUrl,
    @JsonKey(name: 'is_editable') final bool? isEditable,
    @JsonKey(name: 'needs_payment') final bool? needsPayment,
    @JsonKey(name: 'needs_processing') final bool? needsProcessing,
    @JsonKey(name: 'date_created_gmt') final String? dateCreatedGmt,
    @JsonKey(name: 'date_modified_gmt') final String? dateModifiedGmt,
    @JsonKey(name: 'date_completed_gmt') final String? dateCompletedGmt,
    @JsonKey(name: 'date_paid_gmt') final String? datePaidGmt,
    @JsonKey(name: 'currency_symbol') final String? currencySymbol,
    @JsonKey(name: '_links') final OrderLinks? links,
  }) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parent_id')
  int get parentId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  String get status;
  @override
  String get currency;
  @override
  String? get version;
  @override
  @JsonKey(name: 'prices_include_tax')
  bool? get pricesIncludeTax;
  @override
  @JsonKey(name: 'date_created')
  String? get dateCreated;
  @override
  @JsonKey(name: 'date_modified')
  String? get dateModified;
  @override
  @JsonKey(name: 'discount_total')
  String? get discountTotal;
  @override
  @JsonKey(name: 'discount_tax')
  String? get discountTax;
  @override
  @JsonKey(name: 'shipping_total')
  String? get shippingTotal;
  @override
  @JsonKey(name: 'shipping_tax')
  String? get shippingTax;
  @override
  @JsonKey(name: 'cart_tax')
  String? get cartTax;
  @override
  String get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  @JsonKey(name: 'order_key')
  String? get orderKey;
  @override
  OrderBilling? get billing;
  @override
  OrderShipping? get shipping;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_method_title')
  String? get paymentMethodTitle;
  @override
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @override
  @JsonKey(name: 'customer_ip_address')
  String? get customerIpAddress;
  @override
  @JsonKey(name: 'customer_user_agent')
  String? get customerUserAgent;
  @override
  @JsonKey(name: 'created_via')
  String? get createdVia;
  @override
  @JsonKey(name: 'customer_note')
  String? get customerNote;
  @override
  @JsonKey(name: 'date_completed')
  String? get dateCompleted;
  @override
  @JsonKey(name: 'date_paid')
  String? get datePaid;
  @override
  @JsonKey(name: 'cart_hash')
  String? get cartHash;
  @override
  String? get number;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;
  @override
  @JsonKey(name: 'line_items')
  List<OrderLineItem> get lineItems;
  @override
  @JsonKey(name: 'tax_lines')
  List<OrderTaxLine> get taxLines;
  @override
  @JsonKey(name: 'shipping_lines')
  List<OrderShippingLine> get shippingLines;
  @override
  @JsonKey(name: 'fee_lines')
  List<OrderFeeLine> get feeLines;
  @override
  @JsonKey(name: 'coupon_lines')
  List<OrderCouponLine> get couponLines;
  @override
  List<OrderRefund> get refunds;
  @override
  @JsonKey(name: 'payment_url')
  String? get paymentUrl;
  @override
  @JsonKey(name: 'is_editable')
  bool? get isEditable;
  @override
  @JsonKey(name: 'needs_payment')
  bool? get needsPayment;
  @override
  @JsonKey(name: 'needs_processing')
  bool? get needsProcessing;
  @override
  @JsonKey(name: 'date_created_gmt')
  String? get dateCreatedGmt;
  @override
  @JsonKey(name: 'date_modified_gmt')
  String? get dateModifiedGmt;
  @override
  @JsonKey(name: 'date_completed_gmt')
  String? get dateCompletedGmt;
  @override
  @JsonKey(name: 'date_paid_gmt')
  String? get datePaidGmt;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(name: '_links')
  OrderLinks? get links;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLineItem _$OrderLineItemFromJson(Map<String, dynamic> json) {
  return _OrderLineItem.fromJson(json);
}

/// @nodoc
mixin _$OrderLineItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  int? get variationId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_class')
  String? get taxClass => throw _privateConstructorUsedError;
  String? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal_tax')
  String? get subtotalTax => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  List<dynamic> get taxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'global_unique_id')
  String? get globalUniqueId => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  OrderLineItemImage? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_name')
  String? get parentName => throw _privateConstructorUsedError;

  /// Serializes this OrderLineItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderLineItemCopyWith<OrderLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineItemCopyWith<$Res> {
  factory $OrderLineItemCopyWith(
    OrderLineItem value,
    $Res Function(OrderLineItem) then,
  ) = _$OrderLineItemCopyWithImpl<$Res, OrderLineItem>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'variation_id') int? variationId,
    int quantity,
    @JsonKey(name: 'tax_class') String? taxClass,
    String? subtotal,
    @JsonKey(name: 'subtotal_tax') String? subtotalTax,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
    String? sku,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
    int? price,
    OrderLineItemImage? image,
    @JsonKey(name: 'parent_name') String? parentName,
  });

  $OrderLineItemImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$OrderLineItemCopyWithImpl<$Res, $Val extends OrderLineItem>
    implements $OrderLineItemCopyWith<$Res> {
  _$OrderLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productId = freezed,
    Object? variationId = freezed,
    Object? quantity = null,
    Object? taxClass = freezed,
    Object? subtotal = freezed,
    Object? subtotalTax = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? metaData = null,
    Object? sku = freezed,
    Object? globalUniqueId = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? parentName = freezed,
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
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            variationId: freezed == variationId
                ? _value.variationId
                : variationId // ignore: cast_nullable_to_non_nullable
                      as int?,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            taxClass: freezed == taxClass
                ? _value.taxClass
                : taxClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            subtotal: freezed == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            subtotalTax: freezed == subtotalTax
                ? _value.subtotalTax
                : subtotalTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalTax: freezed == totalTax
                ? _value.totalTax
                : totalTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxes: null == taxes
                ? _value.taxes
                : taxes // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
            sku: freezed == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                      as String?,
            globalUniqueId: freezed == globalUniqueId
                ? _value.globalUniqueId
                : globalUniqueId // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as OrderLineItemImage?,
            parentName: freezed == parentName
                ? _value.parentName
                : parentName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderLineItemImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $OrderLineItemImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderLineItemImplCopyWith<$Res>
    implements $OrderLineItemCopyWith<$Res> {
  factory _$$OrderLineItemImplCopyWith(
    _$OrderLineItemImpl value,
    $Res Function(_$OrderLineItemImpl) then,
  ) = __$$OrderLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'variation_id') int? variationId,
    int quantity,
    @JsonKey(name: 'tax_class') String? taxClass,
    String? subtotal,
    @JsonKey(name: 'subtotal_tax') String? subtotalTax,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
    String? sku,
    @JsonKey(name: 'global_unique_id') String? globalUniqueId,
    int? price,
    OrderLineItemImage? image,
    @JsonKey(name: 'parent_name') String? parentName,
  });

  @override
  $OrderLineItemImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$OrderLineItemImplCopyWithImpl<$Res>
    extends _$OrderLineItemCopyWithImpl<$Res, _$OrderLineItemImpl>
    implements _$$OrderLineItemImplCopyWith<$Res> {
  __$$OrderLineItemImplCopyWithImpl(
    _$OrderLineItemImpl _value,
    $Res Function(_$OrderLineItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productId = freezed,
    Object? variationId = freezed,
    Object? quantity = null,
    Object? taxClass = freezed,
    Object? subtotal = freezed,
    Object? subtotalTax = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? metaData = null,
    Object? sku = freezed,
    Object? globalUniqueId = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? parentName = freezed,
  }) {
    return _then(
      _$OrderLineItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        variationId: freezed == variationId
            ? _value.variationId
            : variationId // ignore: cast_nullable_to_non_nullable
                  as int?,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        taxClass: freezed == taxClass
            ? _value.taxClass
            : taxClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        subtotal: freezed == subtotal
            ? _value.subtotal
            : subtotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        subtotalTax: freezed == subtotalTax
            ? _value.subtotalTax
            : subtotalTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalTax: freezed == totalTax
            ? _value.totalTax
            : totalTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxes: null == taxes
            ? _value._taxes
            : taxes // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
        sku: freezed == sku
            ? _value.sku
            : sku // ignore: cast_nullable_to_non_nullable
                  as String?,
        globalUniqueId: freezed == globalUniqueId
            ? _value.globalUniqueId
            : globalUniqueId // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int?,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as OrderLineItemImage?,
        parentName: freezed == parentName
            ? _value.parentName
            : parentName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLineItemImpl implements _OrderLineItem {
  const _$OrderLineItemImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'variation_id') this.variationId,
    this.quantity = 0,
    @JsonKey(name: 'tax_class') this.taxClass,
    this.subtotal,
    @JsonKey(name: 'subtotal_tax') this.subtotalTax,
    this.total,
    @JsonKey(name: 'total_tax') this.totalTax,
    final List<dynamic> taxes = const [],
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
    this.sku,
    @JsonKey(name: 'global_unique_id') this.globalUniqueId,
    this.price,
    this.image,
    @JsonKey(name: 'parent_name') this.parentName,
  }) : _taxes = taxes,
       _metaData = metaData;

  factory _$OrderLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLineItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'variation_id')
  final int? variationId;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey(name: 'tax_class')
  final String? taxClass;
  @override
  final String? subtotal;
  @override
  @JsonKey(name: 'subtotal_tax')
  final String? subtotalTax;
  @override
  final String? total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  final List<dynamic> _taxes;
  @override
  @JsonKey()
  List<dynamic> get taxes {
    if (_taxes is EqualUnmodifiableListView) return _taxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxes);
  }

  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  final String? sku;
  @override
  @JsonKey(name: 'global_unique_id')
  final String? globalUniqueId;
  @override
  final int? price;
  @override
  final OrderLineItemImage? image;
  @override
  @JsonKey(name: 'parent_name')
  final String? parentName;

  @override
  String toString() {
    return 'OrderLineItem(id: $id, name: $name, productId: $productId, variationId: $variationId, quantity: $quantity, taxClass: $taxClass, subtotal: $subtotal, subtotalTax: $subtotalTax, total: $total, totalTax: $totalTax, taxes: $taxes, metaData: $metaData, sku: $sku, globalUniqueId: $globalUniqueId, price: $price, image: $image, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.taxClass, taxClass) ||
                other.taxClass == taxClass) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.subtotalTax, subtotalTax) ||
                other.subtotalTax == subtotalTax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.globalUniqueId, globalUniqueId) ||
                other.globalUniqueId == globalUniqueId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    productId,
    variationId,
    quantity,
    taxClass,
    subtotal,
    subtotalTax,
    total,
    totalTax,
    const DeepCollectionEquality().hash(_taxes),
    const DeepCollectionEquality().hash(_metaData),
    sku,
    globalUniqueId,
    price,
    image,
    parentName,
  );

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLineItemImplCopyWith<_$OrderLineItemImpl> get copyWith =>
      __$$OrderLineItemImplCopyWithImpl<_$OrderLineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLineItemImplToJson(this);
  }
}

abstract class _OrderLineItem implements OrderLineItem {
  const factory _OrderLineItem({
    required final int id,
    required final String name,
    @JsonKey(name: 'product_id') final int? productId,
    @JsonKey(name: 'variation_id') final int? variationId,
    final int quantity,
    @JsonKey(name: 'tax_class') final String? taxClass,
    final String? subtotal,
    @JsonKey(name: 'subtotal_tax') final String? subtotalTax,
    final String? total,
    @JsonKey(name: 'total_tax') final String? totalTax,
    final List<dynamic> taxes,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
    final String? sku,
    @JsonKey(name: 'global_unique_id') final String? globalUniqueId,
    final int? price,
    final OrderLineItemImage? image,
    @JsonKey(name: 'parent_name') final String? parentName,
  }) = _$OrderLineItemImpl;

  factory _OrderLineItem.fromJson(Map<String, dynamic> json) =
      _$OrderLineItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'variation_id')
  int? get variationId;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'tax_class')
  String? get taxClass;
  @override
  String? get subtotal;
  @override
  @JsonKey(name: 'subtotal_tax')
  String? get subtotalTax;
  @override
  String? get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  List<dynamic> get taxes;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;
  @override
  String? get sku;
  @override
  @JsonKey(name: 'global_unique_id')
  String? get globalUniqueId;
  @override
  int? get price;
  @override
  OrderLineItemImage? get image;
  @override
  @JsonKey(name: 'parent_name')
  String? get parentName;

  /// Create a copy of OrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderLineItemImplCopyWith<_$OrderLineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLineItemImage _$OrderLineItemImageFromJson(Map<String, dynamic> json) {
  return _OrderLineItemImage.fromJson(json);
}

/// @nodoc
mixin _$OrderLineItemImage {
  int get id => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  /// Serializes this OrderLineItemImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderLineItemImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderLineItemImageCopyWith<OrderLineItemImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineItemImageCopyWith<$Res> {
  factory $OrderLineItemImageCopyWith(
    OrderLineItemImage value,
    $Res Function(OrderLineItemImage) then,
  ) = _$OrderLineItemImageCopyWithImpl<$Res, OrderLineItemImage>;
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class _$OrderLineItemImageCopyWithImpl<$Res, $Val extends OrderLineItemImage>
    implements $OrderLineItemImageCopyWith<$Res> {
  _$OrderLineItemImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderLineItemImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? src = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            src: null == src
                ? _value.src
                : src // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderLineItemImageImplCopyWith<$Res>
    implements $OrderLineItemImageCopyWith<$Res> {
  factory _$$OrderLineItemImageImplCopyWith(
    _$OrderLineItemImageImpl value,
    $Res Function(_$OrderLineItemImageImpl) then,
  ) = __$$OrderLineItemImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class __$$OrderLineItemImageImplCopyWithImpl<$Res>
    extends _$OrderLineItemImageCopyWithImpl<$Res, _$OrderLineItemImageImpl>
    implements _$$OrderLineItemImageImplCopyWith<$Res> {
  __$$OrderLineItemImageImplCopyWithImpl(
    _$OrderLineItemImageImpl _value,
    $Res Function(_$OrderLineItemImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderLineItemImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? src = null}) {
    return _then(
      _$OrderLineItemImageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        src: null == src
            ? _value.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLineItemImageImpl implements _OrderLineItemImage {
  const _$OrderLineItemImageImpl({required this.id, required this.src});

  factory _$OrderLineItemImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLineItemImageImplFromJson(json);

  @override
  final int id;
  @override
  final String src;

  @override
  String toString() {
    return 'OrderLineItemImage(id: $id, src: $src)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLineItemImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  /// Create a copy of OrderLineItemImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLineItemImageImplCopyWith<_$OrderLineItemImageImpl> get copyWith =>
      __$$OrderLineItemImageImplCopyWithImpl<_$OrderLineItemImageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLineItemImageImplToJson(this);
  }
}

abstract class _OrderLineItemImage implements OrderLineItemImage {
  const factory _OrderLineItemImage({
    required final int id,
    required final String src,
  }) = _$OrderLineItemImageImpl;

  factory _OrderLineItemImage.fromJson(Map<String, dynamic> json) =
      _$OrderLineItemImageImpl.fromJson;

  @override
  int get id;
  @override
  String get src;

  /// Create a copy of OrderLineItemImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderLineItemImageImplCopyWith<_$OrderLineItemImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderBilling _$OrderBillingFromJson(Map<String, dynamic> json) {
  return _OrderBilling.fromJson(json);
}

/// @nodoc
mixin _$OrderBilling {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_1')
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_2')
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this OrderBilling to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderBilling
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBillingCopyWith<OrderBilling> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBillingCopyWith<$Res> {
  factory $OrderBillingCopyWith(
    OrderBilling value,
    $Res Function(OrderBilling) then,
  ) = _$OrderBillingCopyWithImpl<$Res, OrderBilling>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$OrderBillingCopyWithImpl<$Res, $Val extends OrderBilling>
    implements $OrderBillingCopyWith<$Res> {
  _$OrderBillingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBilling
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _value.copyWith(
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            company: freezed == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                      as String?,
            address1: freezed == address1
                ? _value.address1
                : address1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            address2: freezed == address2
                ? _value.address2
                : address2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            postcode: freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderBillingImplCopyWith<$Res>
    implements $OrderBillingCopyWith<$Res> {
  factory _$$OrderBillingImplCopyWith(
    _$OrderBillingImpl value,
    $Res Function(_$OrderBillingImpl) then,
  ) = __$$OrderBillingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$OrderBillingImplCopyWithImpl<$Res>
    extends _$OrderBillingCopyWithImpl<$Res, _$OrderBillingImpl>
    implements _$$OrderBillingImplCopyWith<$Res> {
  __$$OrderBillingImplCopyWithImpl(
    _$OrderBillingImpl _value,
    $Res Function(_$OrderBillingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderBilling
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _$OrderBillingImpl(
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        company: freezed == company
            ? _value.company
            : company // ignore: cast_nullable_to_non_nullable
                  as String?,
        address1: freezed == address1
            ? _value.address1
            : address1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        address2: freezed == address2
            ? _value.address2
            : address2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        postcode: freezed == postcode
            ? _value.postcode
            : postcode // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderBillingImpl implements _OrderBilling {
  const _$OrderBillingImpl({
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    this.company,
    @JsonKey(name: 'address_1') this.address1,
    @JsonKey(name: 'address_2') this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  factory _$OrderBillingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderBillingImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? company;
  @override
  @JsonKey(name: 'address_1')
  final String? address1;
  @override
  @JsonKey(name: 'address_2')
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'OrderBilling(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBillingImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstName,
    lastName,
    company,
    address1,
    address2,
    city,
    state,
    postcode,
    country,
    email,
    phone,
  );

  /// Create a copy of OrderBilling
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBillingImplCopyWith<_$OrderBillingImpl> get copyWith =>
      __$$OrderBillingImplCopyWithImpl<_$OrderBillingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderBillingImplToJson(this);
  }
}

abstract class _OrderBilling implements OrderBilling {
  const factory _OrderBilling({
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    final String? company,
    @JsonKey(name: 'address_1') final String? address1,
    @JsonKey(name: 'address_2') final String? address2,
    final String? city,
    final String? state,
    final String? postcode,
    final String? country,
    final String? email,
    final String? phone,
  }) = _$OrderBillingImpl;

  factory _OrderBilling.fromJson(Map<String, dynamic> json) =
      _$OrderBillingImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get company;
  @override
  @JsonKey(name: 'address_1')
  String? get address1;
  @override
  @JsonKey(name: 'address_2')
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  String? get email;
  @override
  String? get phone;

  /// Create a copy of OrderBilling
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBillingImplCopyWith<_$OrderBillingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderShipping _$OrderShippingFromJson(Map<String, dynamic> json) {
  return _OrderShipping.fromJson(json);
}

/// @nodoc
mixin _$OrderShipping {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_1')
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_2')
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this OrderShipping to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderShipping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderShippingCopyWith<OrderShipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderShippingCopyWith<$Res> {
  factory $OrderShippingCopyWith(
    OrderShipping value,
    $Res Function(OrderShipping) then,
  ) = _$OrderShippingCopyWithImpl<$Res, OrderShipping>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$OrderShippingCopyWithImpl<$Res, $Val extends OrderShipping>
    implements $OrderShippingCopyWith<$Res> {
  _$OrderShippingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderShipping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _value.copyWith(
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            company: freezed == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                      as String?,
            address1: freezed == address1
                ? _value.address1
                : address1 // ignore: cast_nullable_to_non_nullable
                      as String?,
            address2: freezed == address2
                ? _value.address2
                : address2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            postcode: freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderShippingImplCopyWith<$Res>
    implements $OrderShippingCopyWith<$Res> {
  factory _$$OrderShippingImplCopyWith(
    _$OrderShippingImpl value,
    $Res Function(_$OrderShippingImpl) then,
  ) = __$$OrderShippingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$OrderShippingImplCopyWithImpl<$Res>
    extends _$OrderShippingCopyWithImpl<$Res, _$OrderShippingImpl>
    implements _$$OrderShippingImplCopyWith<$Res> {
  __$$OrderShippingImplCopyWithImpl(
    _$OrderShippingImpl _value,
    $Res Function(_$OrderShippingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderShipping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _$OrderShippingImpl(
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        company: freezed == company
            ? _value.company
            : company // ignore: cast_nullable_to_non_nullable
                  as String?,
        address1: freezed == address1
            ? _value.address1
            : address1 // ignore: cast_nullable_to_non_nullable
                  as String?,
        address2: freezed == address2
            ? _value.address2
            : address2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        postcode: freezed == postcode
            ? _value.postcode
            : postcode // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderShippingImpl implements _OrderShipping {
  const _$OrderShippingImpl({
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    this.company,
    @JsonKey(name: 'address_1') this.address1,
    @JsonKey(name: 'address_2') this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.phone,
  });

  factory _$OrderShippingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderShippingImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? company;
  @override
  @JsonKey(name: 'address_1')
  final String? address1;
  @override
  @JsonKey(name: 'address_2')
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;
  @override
  final String? phone;

  @override
  String toString() {
    return 'OrderShipping(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderShippingImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstName,
    lastName,
    company,
    address1,
    address2,
    city,
    state,
    postcode,
    country,
    phone,
  );

  /// Create a copy of OrderShipping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderShippingImplCopyWith<_$OrderShippingImpl> get copyWith =>
      __$$OrderShippingImplCopyWithImpl<_$OrderShippingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderShippingImplToJson(this);
  }
}

abstract class _OrderShipping implements OrderShipping {
  const factory _OrderShipping({
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    final String? company,
    @JsonKey(name: 'address_1') final String? address1,
    @JsonKey(name: 'address_2') final String? address2,
    final String? city,
    final String? state,
    final String? postcode,
    final String? country,
    final String? phone,
  }) = _$OrderShippingImpl;

  factory _OrderShipping.fromJson(Map<String, dynamic> json) =
      _$OrderShippingImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get company;
  @override
  @JsonKey(name: 'address_1')
  String? get address1;
  @override
  @JsonKey(name: 'address_2')
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  String? get phone;

  /// Create a copy of OrderShipping
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderShippingImplCopyWith<_$OrderShippingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderMetaData _$OrderMetaDataFromJson(Map<String, dynamic> json) {
  return _OrderMetaData.fromJson(json);
}

/// @nodoc
mixin _$OrderMetaData {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_key')
  String? get displayKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_value')
  dynamic get displayValue => throw _privateConstructorUsedError;

  /// Serializes this OrderMetaData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderMetaDataCopyWith<OrderMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMetaDataCopyWith<$Res> {
  factory $OrderMetaDataCopyWith(
    OrderMetaData value,
    $Res Function(OrderMetaData) then,
  ) = _$OrderMetaDataCopyWithImpl<$Res, OrderMetaData>;
  @useResult
  $Res call({
    int id,
    String key,
    dynamic value,
    @JsonKey(name: 'display_key') String? displayKey,
    @JsonKey(name: 'display_value') dynamic displayValue,
  });
}

/// @nodoc
class _$OrderMetaDataCopyWithImpl<$Res, $Val extends OrderMetaData>
    implements $OrderMetaDataCopyWith<$Res> {
  _$OrderMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? value = freezed,
    Object? displayKey = freezed,
    Object? displayValue = freezed,
  }) {
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
            displayKey: freezed == displayKey
                ? _value.displayKey
                : displayKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            displayValue: freezed == displayValue
                ? _value.displayValue
                : displayValue // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderMetaDataImplCopyWith<$Res>
    implements $OrderMetaDataCopyWith<$Res> {
  factory _$$OrderMetaDataImplCopyWith(
    _$OrderMetaDataImpl value,
    $Res Function(_$OrderMetaDataImpl) then,
  ) = __$$OrderMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String key,
    dynamic value,
    @JsonKey(name: 'display_key') String? displayKey,
    @JsonKey(name: 'display_value') dynamic displayValue,
  });
}

/// @nodoc
class __$$OrderMetaDataImplCopyWithImpl<$Res>
    extends _$OrderMetaDataCopyWithImpl<$Res, _$OrderMetaDataImpl>
    implements _$$OrderMetaDataImplCopyWith<$Res> {
  __$$OrderMetaDataImplCopyWithImpl(
    _$OrderMetaDataImpl _value,
    $Res Function(_$OrderMetaDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? value = freezed,
    Object? displayKey = freezed,
    Object? displayValue = freezed,
  }) {
    return _then(
      _$OrderMetaDataImpl(
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
        displayKey: freezed == displayKey
            ? _value.displayKey
            : displayKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        displayValue: freezed == displayValue
            ? _value.displayValue
            : displayValue // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderMetaDataImpl implements _OrderMetaData {
  const _$OrderMetaDataImpl({
    required this.id,
    required this.key,
    this.value,
    @JsonKey(name: 'display_key') this.displayKey,
    @JsonKey(name: 'display_value') this.displayValue,
  });

  factory _$OrderMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderMetaDataImplFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final dynamic value;
  @override
  @JsonKey(name: 'display_key')
  final String? displayKey;
  @override
  @JsonKey(name: 'display_value')
  final dynamic displayValue;

  @override
  String toString() {
    return 'OrderMetaData(id: $id, key: $key, value: $value, displayKey: $displayKey, displayValue: $displayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderMetaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.displayKey, displayKey) ||
                other.displayKey == displayKey) &&
            const DeepCollectionEquality().equals(
              other.displayValue,
              displayValue,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    key,
    const DeepCollectionEquality().hash(value),
    displayKey,
    const DeepCollectionEquality().hash(displayValue),
  );

  /// Create a copy of OrderMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderMetaDataImplCopyWith<_$OrderMetaDataImpl> get copyWith =>
      __$$OrderMetaDataImplCopyWithImpl<_$OrderMetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderMetaDataImplToJson(this);
  }
}

abstract class _OrderMetaData implements OrderMetaData {
  const factory _OrderMetaData({
    required final int id,
    required final String key,
    final dynamic value,
    @JsonKey(name: 'display_key') final String? displayKey,
    @JsonKey(name: 'display_value') final dynamic displayValue,
  }) = _$OrderMetaDataImpl;

  factory _OrderMetaData.fromJson(Map<String, dynamic> json) =
      _$OrderMetaDataImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  dynamic get value;
  @override
  @JsonKey(name: 'display_key')
  String? get displayKey;
  @override
  @JsonKey(name: 'display_value')
  dynamic get displayValue;

  /// Create a copy of OrderMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderMetaDataImplCopyWith<_$OrderMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderTaxLine _$OrderTaxLineFromJson(Map<String, dynamic> json) {
  return _OrderTaxLine.fromJson(json);
}

/// @nodoc
mixin _$OrderTaxLine {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_code')
  String? get rateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_id')
  int? get rateId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get compound => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_tax_total')
  String? get shippingTaxTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_percent')
  double? get ratePercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;

  /// Serializes this OrderTaxLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTaxLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTaxLineCopyWith<OrderTaxLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTaxLineCopyWith<$Res> {
  factory $OrderTaxLineCopyWith(
    OrderTaxLine value,
    $Res Function(OrderTaxLine) then,
  ) = _$OrderTaxLineCopyWithImpl<$Res, OrderTaxLine>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'rate_code') String? rateCode,
    @JsonKey(name: 'rate_id') int? rateId,
    String? label,
    bool? compound,
    String total,
    @JsonKey(name: 'shipping_tax_total') String? shippingTaxTotal,
    @JsonKey(name: 'rate_percent') double? ratePercent,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class _$OrderTaxLineCopyWithImpl<$Res, $Val extends OrderTaxLine>
    implements $OrderTaxLineCopyWith<$Res> {
  _$OrderTaxLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTaxLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rateCode = freezed,
    Object? rateId = freezed,
    Object? label = freezed,
    Object? compound = freezed,
    Object? total = null,
    Object? shippingTaxTotal = freezed,
    Object? ratePercent = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            rateCode: freezed == rateCode
                ? _value.rateCode
                : rateCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            rateId: freezed == rateId
                ? _value.rateId
                : rateId // ignore: cast_nullable_to_non_nullable
                      as int?,
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            compound: freezed == compound
                ? _value.compound
                : compound // ignore: cast_nullable_to_non_nullable
                      as bool?,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String,
            shippingTaxTotal: freezed == shippingTaxTotal
                ? _value.shippingTaxTotal
                : shippingTaxTotal // ignore: cast_nullable_to_non_nullable
                      as String?,
            ratePercent: freezed == ratePercent
                ? _value.ratePercent
                : ratePercent // ignore: cast_nullable_to_non_nullable
                      as double?,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderTaxLineImplCopyWith<$Res>
    implements $OrderTaxLineCopyWith<$Res> {
  factory _$$OrderTaxLineImplCopyWith(
    _$OrderTaxLineImpl value,
    $Res Function(_$OrderTaxLineImpl) then,
  ) = __$$OrderTaxLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'rate_code') String? rateCode,
    @JsonKey(name: 'rate_id') int? rateId,
    String? label,
    bool? compound,
    String total,
    @JsonKey(name: 'shipping_tax_total') String? shippingTaxTotal,
    @JsonKey(name: 'rate_percent') double? ratePercent,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class __$$OrderTaxLineImplCopyWithImpl<$Res>
    extends _$OrderTaxLineCopyWithImpl<$Res, _$OrderTaxLineImpl>
    implements _$$OrderTaxLineImplCopyWith<$Res> {
  __$$OrderTaxLineImplCopyWithImpl(
    _$OrderTaxLineImpl _value,
    $Res Function(_$OrderTaxLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderTaxLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rateCode = freezed,
    Object? rateId = freezed,
    Object? label = freezed,
    Object? compound = freezed,
    Object? total = null,
    Object? shippingTaxTotal = freezed,
    Object? ratePercent = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _$OrderTaxLineImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        rateCode: freezed == rateCode
            ? _value.rateCode
            : rateCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        rateId: freezed == rateId
            ? _value.rateId
            : rateId // ignore: cast_nullable_to_non_nullable
                  as int?,
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        compound: freezed == compound
            ? _value.compound
            : compound // ignore: cast_nullable_to_non_nullable
                  as bool?,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String,
        shippingTaxTotal: freezed == shippingTaxTotal
            ? _value.shippingTaxTotal
            : shippingTaxTotal // ignore: cast_nullable_to_non_nullable
                  as String?,
        ratePercent: freezed == ratePercent
            ? _value.ratePercent
            : ratePercent // ignore: cast_nullable_to_non_nullable
                  as double?,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTaxLineImpl implements _OrderTaxLine {
  const _$OrderTaxLineImpl({
    required this.id,
    @JsonKey(name: 'rate_code') this.rateCode,
    @JsonKey(name: 'rate_id') this.rateId,
    this.label,
    this.compound,
    this.total = '0.00',
    @JsonKey(name: 'shipping_tax_total') this.shippingTaxTotal,
    @JsonKey(name: 'rate_percent') this.ratePercent,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
  }) : _metaData = metaData;

  factory _$OrderTaxLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTaxLineImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'rate_code')
  final String? rateCode;
  @override
  @JsonKey(name: 'rate_id')
  final int? rateId;
  @override
  final String? label;
  @override
  final bool? compound;
  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey(name: 'shipping_tax_total')
  final String? shippingTaxTotal;
  @override
  @JsonKey(name: 'rate_percent')
  final double? ratePercent;
  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  String toString() {
    return 'OrderTaxLine(id: $id, rateCode: $rateCode, rateId: $rateId, label: $label, compound: $compound, total: $total, shippingTaxTotal: $shippingTaxTotal, ratePercent: $ratePercent, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTaxLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rateCode, rateCode) ||
                other.rateCode == rateCode) &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.compound, compound) ||
                other.compound == compound) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.shippingTaxTotal, shippingTaxTotal) ||
                other.shippingTaxTotal == shippingTaxTotal) &&
            (identical(other.ratePercent, ratePercent) ||
                other.ratePercent == ratePercent) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    rateCode,
    rateId,
    label,
    compound,
    total,
    shippingTaxTotal,
    ratePercent,
    const DeepCollectionEquality().hash(_metaData),
  );

  /// Create a copy of OrderTaxLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTaxLineImplCopyWith<_$OrderTaxLineImpl> get copyWith =>
      __$$OrderTaxLineImplCopyWithImpl<_$OrderTaxLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTaxLineImplToJson(this);
  }
}

abstract class _OrderTaxLine implements OrderTaxLine {
  const factory _OrderTaxLine({
    required final int id,
    @JsonKey(name: 'rate_code') final String? rateCode,
    @JsonKey(name: 'rate_id') final int? rateId,
    final String? label,
    final bool? compound,
    final String total,
    @JsonKey(name: 'shipping_tax_total') final String? shippingTaxTotal,
    @JsonKey(name: 'rate_percent') final double? ratePercent,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
  }) = _$OrderTaxLineImpl;

  factory _OrderTaxLine.fromJson(Map<String, dynamic> json) =
      _$OrderTaxLineImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'rate_code')
  String? get rateCode;
  @override
  @JsonKey(name: 'rate_id')
  int? get rateId;
  @override
  String? get label;
  @override
  bool? get compound;
  @override
  String get total;
  @override
  @JsonKey(name: 'shipping_tax_total')
  String? get shippingTaxTotal;
  @override
  @JsonKey(name: 'rate_percent')
  double? get ratePercent;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;

  /// Create a copy of OrderTaxLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTaxLineImplCopyWith<_$OrderTaxLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderShippingLine _$OrderShippingLineFromJson(Map<String, dynamic> json) {
  return _OrderShippingLine.fromJson(json);
}

/// @nodoc
mixin _$OrderShippingLine {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_title')
  String? get methodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_id')
  String? get methodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'instance_id')
  String? get instanceId => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  List<dynamic> get taxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_status')
  String? get taxStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;

  /// Serializes this OrderShippingLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderShippingLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderShippingLineCopyWith<OrderShippingLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderShippingLineCopyWith<$Res> {
  factory $OrderShippingLineCopyWith(
    OrderShippingLine value,
    $Res Function(OrderShippingLine) then,
  ) = _$OrderShippingLineCopyWithImpl<$Res, OrderShippingLine>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'method_title') String? methodTitle,
    @JsonKey(name: 'method_id') String? methodId,
    @JsonKey(name: 'instance_id') String? instanceId,
    String total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'tax_status') String? taxStatus,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class _$OrderShippingLineCopyWithImpl<$Res, $Val extends OrderShippingLine>
    implements $OrderShippingLineCopyWith<$Res> {
  _$OrderShippingLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderShippingLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? methodTitle = freezed,
    Object? methodId = freezed,
    Object? instanceId = freezed,
    Object? total = null,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? taxStatus = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            methodTitle: freezed == methodTitle
                ? _value.methodTitle
                : methodTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            methodId: freezed == methodId
                ? _value.methodId
                : methodId // ignore: cast_nullable_to_non_nullable
                      as String?,
            instanceId: freezed == instanceId
                ? _value.instanceId
                : instanceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String,
            totalTax: freezed == totalTax
                ? _value.totalTax
                : totalTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxes: null == taxes
                ? _value.taxes
                : taxes // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            taxStatus: freezed == taxStatus
                ? _value.taxStatus
                : taxStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderShippingLineImplCopyWith<$Res>
    implements $OrderShippingLineCopyWith<$Res> {
  factory _$$OrderShippingLineImplCopyWith(
    _$OrderShippingLineImpl value,
    $Res Function(_$OrderShippingLineImpl) then,
  ) = __$$OrderShippingLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'method_title') String? methodTitle,
    @JsonKey(name: 'method_id') String? methodId,
    @JsonKey(name: 'instance_id') String? instanceId,
    String total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'tax_status') String? taxStatus,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class __$$OrderShippingLineImplCopyWithImpl<$Res>
    extends _$OrderShippingLineCopyWithImpl<$Res, _$OrderShippingLineImpl>
    implements _$$OrderShippingLineImplCopyWith<$Res> {
  __$$OrderShippingLineImplCopyWithImpl(
    _$OrderShippingLineImpl _value,
    $Res Function(_$OrderShippingLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderShippingLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? methodTitle = freezed,
    Object? methodId = freezed,
    Object? instanceId = freezed,
    Object? total = null,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? taxStatus = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _$OrderShippingLineImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        methodTitle: freezed == methodTitle
            ? _value.methodTitle
            : methodTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        methodId: freezed == methodId
            ? _value.methodId
            : methodId // ignore: cast_nullable_to_non_nullable
                  as String?,
        instanceId: freezed == instanceId
            ? _value.instanceId
            : instanceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String,
        totalTax: freezed == totalTax
            ? _value.totalTax
            : totalTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxes: null == taxes
            ? _value._taxes
            : taxes // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        taxStatus: freezed == taxStatus
            ? _value.taxStatus
            : taxStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderShippingLineImpl implements _OrderShippingLine {
  const _$OrderShippingLineImpl({
    required this.id,
    @JsonKey(name: 'method_title') this.methodTitle,
    @JsonKey(name: 'method_id') this.methodId,
    @JsonKey(name: 'instance_id') this.instanceId,
    this.total = '0.00',
    @JsonKey(name: 'total_tax') this.totalTax,
    final List<dynamic> taxes = const [],
    @JsonKey(name: 'tax_status') this.taxStatus,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
  }) : _taxes = taxes,
       _metaData = metaData;

  factory _$OrderShippingLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderShippingLineImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'method_title')
  final String? methodTitle;
  @override
  @JsonKey(name: 'method_id')
  final String? methodId;
  @override
  @JsonKey(name: 'instance_id')
  final String? instanceId;
  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  final List<dynamic> _taxes;
  @override
  @JsonKey()
  List<dynamic> get taxes {
    if (_taxes is EqualUnmodifiableListView) return _taxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxes);
  }

  @override
  @JsonKey(name: 'tax_status')
  final String? taxStatus;
  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  String toString() {
    return 'OrderShippingLine(id: $id, methodTitle: $methodTitle, methodId: $methodId, instanceId: $instanceId, total: $total, totalTax: $totalTax, taxes: $taxes, taxStatus: $taxStatus, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderShippingLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.methodTitle, methodTitle) ||
                other.methodTitle == methodTitle) &&
            (identical(other.methodId, methodId) ||
                other.methodId == methodId) &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            (identical(other.taxStatus, taxStatus) ||
                other.taxStatus == taxStatus) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    methodTitle,
    methodId,
    instanceId,
    total,
    totalTax,
    const DeepCollectionEquality().hash(_taxes),
    taxStatus,
    const DeepCollectionEquality().hash(_metaData),
  );

  /// Create a copy of OrderShippingLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderShippingLineImplCopyWith<_$OrderShippingLineImpl> get copyWith =>
      __$$OrderShippingLineImplCopyWithImpl<_$OrderShippingLineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderShippingLineImplToJson(this);
  }
}

abstract class _OrderShippingLine implements OrderShippingLine {
  const factory _OrderShippingLine({
    required final int id,
    @JsonKey(name: 'method_title') final String? methodTitle,
    @JsonKey(name: 'method_id') final String? methodId,
    @JsonKey(name: 'instance_id') final String? instanceId,
    final String total,
    @JsonKey(name: 'total_tax') final String? totalTax,
    final List<dynamic> taxes,
    @JsonKey(name: 'tax_status') final String? taxStatus,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
  }) = _$OrderShippingLineImpl;

  factory _OrderShippingLine.fromJson(Map<String, dynamic> json) =
      _$OrderShippingLineImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'method_title')
  String? get methodTitle;
  @override
  @JsonKey(name: 'method_id')
  String? get methodId;
  @override
  @JsonKey(name: 'instance_id')
  String? get instanceId;
  @override
  String get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  List<dynamic> get taxes;
  @override
  @JsonKey(name: 'tax_status')
  String? get taxStatus;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;

  /// Create a copy of OrderShippingLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderShippingLineImplCopyWith<_$OrderShippingLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderFeeLine _$OrderFeeLineFromJson(Map<String, dynamic> json) {
  return _OrderFeeLine.fromJson(json);
}

/// @nodoc
mixin _$OrderFeeLine {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_class')
  String? get taxClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_status')
  String? get taxStatus => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  List<dynamic> get taxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;

  /// Serializes this OrderFeeLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderFeeLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderFeeLineCopyWith<OrderFeeLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFeeLineCopyWith<$Res> {
  factory $OrderFeeLineCopyWith(
    OrderFeeLine value,
    $Res Function(OrderFeeLine) then,
  ) = _$OrderFeeLineCopyWithImpl<$Res, OrderFeeLine>;
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'tax_class') String? taxClass,
    @JsonKey(name: 'tax_status') String? taxStatus,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class _$OrderFeeLineCopyWithImpl<$Res, $Val extends OrderFeeLine>
    implements $OrderFeeLineCopyWith<$Res> {
  _$OrderFeeLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderFeeLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? taxClass = freezed,
    Object? taxStatus = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? metaData = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxClass: freezed == taxClass
                ? _value.taxClass
                : taxClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxStatus: freezed == taxStatus
                ? _value.taxStatus
                : taxStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalTax: freezed == totalTax
                ? _value.totalTax
                : totalTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxes: null == taxes
                ? _value.taxes
                : taxes // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderFeeLineImplCopyWith<$Res>
    implements $OrderFeeLineCopyWith<$Res> {
  factory _$$OrderFeeLineImplCopyWith(
    _$OrderFeeLineImpl value,
    $Res Function(_$OrderFeeLineImpl) then,
  ) = __$$OrderFeeLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'tax_class') String? taxClass,
    @JsonKey(name: 'tax_status') String? taxStatus,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    List<dynamic> taxes,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class __$$OrderFeeLineImplCopyWithImpl<$Res>
    extends _$OrderFeeLineCopyWithImpl<$Res, _$OrderFeeLineImpl>
    implements _$$OrderFeeLineImplCopyWith<$Res> {
  __$$OrderFeeLineImplCopyWithImpl(
    _$OrderFeeLineImpl _value,
    $Res Function(_$OrderFeeLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderFeeLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? taxClass = freezed,
    Object? taxStatus = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? taxes = null,
    Object? metaData = null,
  }) {
    return _then(
      _$OrderFeeLineImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxClass: freezed == taxClass
            ? _value.taxClass
            : taxClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxStatus: freezed == taxStatus
            ? _value.taxStatus
            : taxStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalTax: freezed == totalTax
            ? _value.totalTax
            : totalTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxes: null == taxes
            ? _value._taxes
            : taxes // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderFeeLineImpl implements _OrderFeeLine {
  const _$OrderFeeLineImpl({
    this.id,
    this.name,
    @JsonKey(name: 'tax_class') this.taxClass,
    @JsonKey(name: 'tax_status') this.taxStatus,
    this.total,
    @JsonKey(name: 'total_tax') this.totalTax,
    final List<dynamic> taxes = const [],
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
  }) : _taxes = taxes,
       _metaData = metaData;

  factory _$OrderFeeLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderFeeLineImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'tax_class')
  final String? taxClass;
  @override
  @JsonKey(name: 'tax_status')
  final String? taxStatus;
  @override
  final String? total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  final List<dynamic> _taxes;
  @override
  @JsonKey()
  List<dynamic> get taxes {
    if (_taxes is EqualUnmodifiableListView) return _taxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxes);
  }

  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  String toString() {
    return 'OrderFeeLine(id: $id, name: $name, taxClass: $taxClass, taxStatus: $taxStatus, total: $total, totalTax: $totalTax, taxes: $taxes, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderFeeLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.taxClass, taxClass) ||
                other.taxClass == taxClass) &&
            (identical(other.taxStatus, taxStatus) ||
                other.taxStatus == taxStatus) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    taxClass,
    taxStatus,
    total,
    totalTax,
    const DeepCollectionEquality().hash(_taxes),
    const DeepCollectionEquality().hash(_metaData),
  );

  /// Create a copy of OrderFeeLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderFeeLineImplCopyWith<_$OrderFeeLineImpl> get copyWith =>
      __$$OrderFeeLineImplCopyWithImpl<_$OrderFeeLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderFeeLineImplToJson(this);
  }
}

abstract class _OrderFeeLine implements OrderFeeLine {
  const factory _OrderFeeLine({
    final int? id,
    final String? name,
    @JsonKey(name: 'tax_class') final String? taxClass,
    @JsonKey(name: 'tax_status') final String? taxStatus,
    final String? total,
    @JsonKey(name: 'total_tax') final String? totalTax,
    final List<dynamic> taxes,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
  }) = _$OrderFeeLineImpl;

  factory _OrderFeeLine.fromJson(Map<String, dynamic> json) =
      _$OrderFeeLineImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'tax_class')
  String? get taxClass;
  @override
  @JsonKey(name: 'tax_status')
  String? get taxStatus;
  @override
  String? get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  List<dynamic> get taxes;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;

  /// Create a copy of OrderFeeLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderFeeLineImplCopyWith<_$OrderFeeLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCouponLine _$OrderCouponLineFromJson(Map<String, dynamic> json) {
  return _OrderCouponLine.fromJson(json);
}

/// @nodoc
mixin _$OrderCouponLine {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_tax')
  String? get discountTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData => throw _privateConstructorUsedError;

  /// Serializes this OrderCouponLine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCouponLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCouponLineCopyWith<OrderCouponLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCouponLineCopyWith<$Res> {
  factory $OrderCouponLineCopyWith(
    OrderCouponLine value,
    $Res Function(OrderCouponLine) then,
  ) = _$OrderCouponLineCopyWithImpl<$Res, OrderCouponLine>;
  @useResult
  $Res call({
    int? id,
    String? code,
    String? discount,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class _$OrderCouponLineCopyWithImpl<$Res, $Val extends OrderCouponLine>
    implements $OrderCouponLineCopyWith<$Res> {
  _$OrderCouponLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCouponLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? discount = freezed,
    Object? discountTax = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountTax: freezed == discountTax
                ? _value.discountTax
                : discountTax // ignore: cast_nullable_to_non_nullable
                      as String?,
            metaData: null == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as List<OrderMetaData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderCouponLineImplCopyWith<$Res>
    implements $OrderCouponLineCopyWith<$Res> {
  factory _$$OrderCouponLineImplCopyWith(
    _$OrderCouponLineImpl value,
    $Res Function(_$OrderCouponLineImpl) then,
  ) = __$$OrderCouponLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? code,
    String? discount,
    @JsonKey(name: 'discount_tax') String? discountTax,
    @JsonKey(name: 'meta_data') List<OrderMetaData> metaData,
  });
}

/// @nodoc
class __$$OrderCouponLineImplCopyWithImpl<$Res>
    extends _$OrderCouponLineCopyWithImpl<$Res, _$OrderCouponLineImpl>
    implements _$$OrderCouponLineImplCopyWith<$Res> {
  __$$OrderCouponLineImplCopyWithImpl(
    _$OrderCouponLineImpl _value,
    $Res Function(_$OrderCouponLineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderCouponLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? discount = freezed,
    Object? discountTax = freezed,
    Object? metaData = null,
  }) {
    return _then(
      _$OrderCouponLineImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountTax: freezed == discountTax
            ? _value.discountTax
            : discountTax // ignore: cast_nullable_to_non_nullable
                  as String?,
        metaData: null == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as List<OrderMetaData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCouponLineImpl implements _OrderCouponLine {
  const _$OrderCouponLineImpl({
    this.id,
    this.code,
    this.discount,
    @JsonKey(name: 'discount_tax') this.discountTax,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData = const [],
  }) : _metaData = metaData;

  factory _$OrderCouponLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCouponLineImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? discount;
  @override
  @JsonKey(name: 'discount_tax')
  final String? discountTax;
  final List<OrderMetaData> _metaData;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData {
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaData);
  }

  @override
  String toString() {
    return 'OrderCouponLine(id: $id, code: $code, discount: $discount, discountTax: $discountTax, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCouponLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountTax, discountTax) ||
                other.discountTax == discountTax) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    discount,
    discountTax,
    const DeepCollectionEquality().hash(_metaData),
  );

  /// Create a copy of OrderCouponLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCouponLineImplCopyWith<_$OrderCouponLineImpl> get copyWith =>
      __$$OrderCouponLineImplCopyWithImpl<_$OrderCouponLineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCouponLineImplToJson(this);
  }
}

abstract class _OrderCouponLine implements OrderCouponLine {
  const factory _OrderCouponLine({
    final int? id,
    final String? code,
    final String? discount,
    @JsonKey(name: 'discount_tax') final String? discountTax,
    @JsonKey(name: 'meta_data') final List<OrderMetaData> metaData,
  }) = _$OrderCouponLineImpl;

  factory _OrderCouponLine.fromJson(Map<String, dynamic> json) =
      _$OrderCouponLineImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get discount;
  @override
  @JsonKey(name: 'discount_tax')
  String? get discountTax;
  @override
  @JsonKey(name: 'meta_data')
  List<OrderMetaData> get metaData;

  /// Create a copy of OrderCouponLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCouponLineImplCopyWith<_$OrderCouponLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderRefund _$OrderRefundFromJson(Map<String, dynamic> json) {
  return _OrderRefund.fromJson(json);
}

/// @nodoc
mixin _$OrderRefund {
  int get id => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;

  /// Serializes this OrderRefund to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRefund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRefundCopyWith<OrderRefund> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRefundCopyWith<$Res> {
  factory $OrderRefundCopyWith(
    OrderRefund value,
    $Res Function(OrderRefund) then,
  ) = _$OrderRefundCopyWithImpl<$Res, OrderRefund>;
  @useResult
  $Res call({int id, String? reason, String? total});
}

/// @nodoc
class _$OrderRefundCopyWithImpl<$Res, $Val extends OrderRefund>
    implements $OrderRefundCopyWith<$Res> {
  _$OrderRefundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRefund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reason = freezed,
    Object? total = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderRefundImplCopyWith<$Res>
    implements $OrderRefundCopyWith<$Res> {
  factory _$$OrderRefundImplCopyWith(
    _$OrderRefundImpl value,
    $Res Function(_$OrderRefundImpl) then,
  ) = __$$OrderRefundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? reason, String? total});
}

/// @nodoc
class __$$OrderRefundImplCopyWithImpl<$Res>
    extends _$OrderRefundCopyWithImpl<$Res, _$OrderRefundImpl>
    implements _$$OrderRefundImplCopyWith<$Res> {
  __$$OrderRefundImplCopyWithImpl(
    _$OrderRefundImpl _value,
    $Res Function(_$OrderRefundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderRefund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reason = freezed,
    Object? total = freezed,
  }) {
    return _then(
      _$OrderRefundImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRefundImpl implements _OrderRefund {
  const _$OrderRefundImpl({required this.id, this.reason, this.total});

  factory _$OrderRefundImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRefundImplFromJson(json);

  @override
  final int id;
  @override
  final String? reason;
  @override
  final String? total;

  @override
  String toString() {
    return 'OrderRefund(id: $id, reason: $reason, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRefundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reason, total);

  /// Create a copy of OrderRefund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRefundImplCopyWith<_$OrderRefundImpl> get copyWith =>
      __$$OrderRefundImplCopyWithImpl<_$OrderRefundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRefundImplToJson(this);
  }
}

abstract class _OrderRefund implements OrderRefund {
  const factory _OrderRefund({
    required final int id,
    final String? reason,
    final String? total,
  }) = _$OrderRefundImpl;

  factory _OrderRefund.fromJson(Map<String, dynamic> json) =
      _$OrderRefundImpl.fromJson;

  @override
  int get id;
  @override
  String? get reason;
  @override
  String? get total;

  /// Create a copy of OrderRefund
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRefundImplCopyWith<_$OrderRefundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLinks _$OrderLinksFromJson(Map<String, dynamic> json) {
  return _OrderLinks.fromJson(json);
}

/// @nodoc
mixin _$OrderLinks {
  List<OrderLinkItem> get self => throw _privateConstructorUsedError;
  List<OrderLinkItem> get collection => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_templates')
  List<OrderLinkItem> get emailTemplates => throw _privateConstructorUsedError;
  List<OrderLinkItem> get customer => throw _privateConstructorUsedError;

  /// Serializes this OrderLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderLinksCopyWith<OrderLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLinksCopyWith<$Res> {
  factory $OrderLinksCopyWith(
    OrderLinks value,
    $Res Function(OrderLinks) then,
  ) = _$OrderLinksCopyWithImpl<$Res, OrderLinks>;
  @useResult
  $Res call({
    List<OrderLinkItem> self,
    List<OrderLinkItem> collection,
    @JsonKey(name: 'email_templates') List<OrderLinkItem> emailTemplates,
    List<OrderLinkItem> customer,
  });
}

/// @nodoc
class _$OrderLinksCopyWithImpl<$Res, $Val extends OrderLinks>
    implements $OrderLinksCopyWith<$Res> {
  _$OrderLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? collection = null,
    Object? emailTemplates = null,
    Object? customer = null,
  }) {
    return _then(
      _value.copyWith(
            self: null == self
                ? _value.self
                : self // ignore: cast_nullable_to_non_nullable
                      as List<OrderLinkItem>,
            collection: null == collection
                ? _value.collection
                : collection // ignore: cast_nullable_to_non_nullable
                      as List<OrderLinkItem>,
            emailTemplates: null == emailTemplates
                ? _value.emailTemplates
                : emailTemplates // ignore: cast_nullable_to_non_nullable
                      as List<OrderLinkItem>,
            customer: null == customer
                ? _value.customer
                : customer // ignore: cast_nullable_to_non_nullable
                      as List<OrderLinkItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderLinksImplCopyWith<$Res>
    implements $OrderLinksCopyWith<$Res> {
  factory _$$OrderLinksImplCopyWith(
    _$OrderLinksImpl value,
    $Res Function(_$OrderLinksImpl) then,
  ) = __$$OrderLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<OrderLinkItem> self,
    List<OrderLinkItem> collection,
    @JsonKey(name: 'email_templates') List<OrderLinkItem> emailTemplates,
    List<OrderLinkItem> customer,
  });
}

/// @nodoc
class __$$OrderLinksImplCopyWithImpl<$Res>
    extends _$OrderLinksCopyWithImpl<$Res, _$OrderLinksImpl>
    implements _$$OrderLinksImplCopyWith<$Res> {
  __$$OrderLinksImplCopyWithImpl(
    _$OrderLinksImpl _value,
    $Res Function(_$OrderLinksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? collection = null,
    Object? emailTemplates = null,
    Object? customer = null,
  }) {
    return _then(
      _$OrderLinksImpl(
        self: null == self
            ? _value._self
            : self // ignore: cast_nullable_to_non_nullable
                  as List<OrderLinkItem>,
        collection: null == collection
            ? _value._collection
            : collection // ignore: cast_nullable_to_non_nullable
                  as List<OrderLinkItem>,
        emailTemplates: null == emailTemplates
            ? _value._emailTemplates
            : emailTemplates // ignore: cast_nullable_to_non_nullable
                  as List<OrderLinkItem>,
        customer: null == customer
            ? _value._customer
            : customer // ignore: cast_nullable_to_non_nullable
                  as List<OrderLinkItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLinksImpl implements _OrderLinks {
  const _$OrderLinksImpl({
    final List<OrderLinkItem> self = const [],
    final List<OrderLinkItem> collection = const [],
    @JsonKey(name: 'email_templates')
    final List<OrderLinkItem> emailTemplates = const [],
    final List<OrderLinkItem> customer = const [],
  }) : _self = self,
       _collection = collection,
       _emailTemplates = emailTemplates,
       _customer = customer;

  factory _$OrderLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLinksImplFromJson(json);

  final List<OrderLinkItem> _self;
  @override
  @JsonKey()
  List<OrderLinkItem> get self {
    if (_self is EqualUnmodifiableListView) return _self;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_self);
  }

  final List<OrderLinkItem> _collection;
  @override
  @JsonKey()
  List<OrderLinkItem> get collection {
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collection);
  }

  final List<OrderLinkItem> _emailTemplates;
  @override
  @JsonKey(name: 'email_templates')
  List<OrderLinkItem> get emailTemplates {
    if (_emailTemplates is EqualUnmodifiableListView) return _emailTemplates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emailTemplates);
  }

  final List<OrderLinkItem> _customer;
  @override
  @JsonKey()
  List<OrderLinkItem> get customer {
    if (_customer is EqualUnmodifiableListView) return _customer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customer);
  }

  @override
  String toString() {
    return 'OrderLinks(self: $self, collection: $collection, emailTemplates: $emailTemplates, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLinksImpl &&
            const DeepCollectionEquality().equals(other._self, _self) &&
            const DeepCollectionEquality().equals(
              other._collection,
              _collection,
            ) &&
            const DeepCollectionEquality().equals(
              other._emailTemplates,
              _emailTemplates,
            ) &&
            const DeepCollectionEquality().equals(other._customer, _customer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_self),
    const DeepCollectionEquality().hash(_collection),
    const DeepCollectionEquality().hash(_emailTemplates),
    const DeepCollectionEquality().hash(_customer),
  );

  /// Create a copy of OrderLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLinksImplCopyWith<_$OrderLinksImpl> get copyWith =>
      __$$OrderLinksImplCopyWithImpl<_$OrderLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLinksImplToJson(this);
  }
}

abstract class _OrderLinks implements OrderLinks {
  const factory _OrderLinks({
    final List<OrderLinkItem> self,
    final List<OrderLinkItem> collection,
    @JsonKey(name: 'email_templates') final List<OrderLinkItem> emailTemplates,
    final List<OrderLinkItem> customer,
  }) = _$OrderLinksImpl;

  factory _OrderLinks.fromJson(Map<String, dynamic> json) =
      _$OrderLinksImpl.fromJson;

  @override
  List<OrderLinkItem> get self;
  @override
  List<OrderLinkItem> get collection;
  @override
  @JsonKey(name: 'email_templates')
  List<OrderLinkItem> get emailTemplates;
  @override
  List<OrderLinkItem> get customer;

  /// Create a copy of OrderLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderLinksImplCopyWith<_$OrderLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLinkItem _$OrderLinkItemFromJson(Map<String, dynamic> json) {
  return _OrderLinkItem.fromJson(json);
}

/// @nodoc
mixin _$OrderLinkItem {
  String get href => throw _privateConstructorUsedError;
  bool? get embeddable => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetHints')
  Map<String, dynamic>? get targetHints => throw _privateConstructorUsedError;

  /// Serializes this OrderLinkItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderLinkItemCopyWith<OrderLinkItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLinkItemCopyWith<$Res> {
  factory $OrderLinkItemCopyWith(
    OrderLinkItem value,
    $Res Function(OrderLinkItem) then,
  ) = _$OrderLinkItemCopyWithImpl<$Res, OrderLinkItem>;
  @useResult
  $Res call({
    String href,
    bool? embeddable,
    @JsonKey(name: 'targetHints') Map<String, dynamic>? targetHints,
  });
}

/// @nodoc
class _$OrderLinkItemCopyWithImpl<$Res, $Val extends OrderLinkItem>
    implements $OrderLinkItemCopyWith<$Res> {
  _$OrderLinkItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? embeddable = freezed,
    Object? targetHints = freezed,
  }) {
    return _then(
      _value.copyWith(
            href: null == href
                ? _value.href
                : href // ignore: cast_nullable_to_non_nullable
                      as String,
            embeddable: freezed == embeddable
                ? _value.embeddable
                : embeddable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            targetHints: freezed == targetHints
                ? _value.targetHints
                : targetHints // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderLinkItemImplCopyWith<$Res>
    implements $OrderLinkItemCopyWith<$Res> {
  factory _$$OrderLinkItemImplCopyWith(
    _$OrderLinkItemImpl value,
    $Res Function(_$OrderLinkItemImpl) then,
  ) = __$$OrderLinkItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String href,
    bool? embeddable,
    @JsonKey(name: 'targetHints') Map<String, dynamic>? targetHints,
  });
}

/// @nodoc
class __$$OrderLinkItemImplCopyWithImpl<$Res>
    extends _$OrderLinkItemCopyWithImpl<$Res, _$OrderLinkItemImpl>
    implements _$$OrderLinkItemImplCopyWith<$Res> {
  __$$OrderLinkItemImplCopyWithImpl(
    _$OrderLinkItemImpl _value,
    $Res Function(_$OrderLinkItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? embeddable = freezed,
    Object? targetHints = freezed,
  }) {
    return _then(
      _$OrderLinkItemImpl(
        href: null == href
            ? _value.href
            : href // ignore: cast_nullable_to_non_nullable
                  as String,
        embeddable: freezed == embeddable
            ? _value.embeddable
            : embeddable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        targetHints: freezed == targetHints
            ? _value._targetHints
            : targetHints // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLinkItemImpl implements _OrderLinkItem {
  const _$OrderLinkItemImpl({
    required this.href,
    this.embeddable,
    @JsonKey(name: 'targetHints') final Map<String, dynamic>? targetHints,
  }) : _targetHints = targetHints;

  factory _$OrderLinkItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLinkItemImplFromJson(json);

  @override
  final String href;
  @override
  final bool? embeddable;
  final Map<String, dynamic>? _targetHints;
  @override
  @JsonKey(name: 'targetHints')
  Map<String, dynamic>? get targetHints {
    final value = _targetHints;
    if (value == null) return null;
    if (_targetHints is EqualUnmodifiableMapView) return _targetHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OrderLinkItem(href: $href, embeddable: $embeddable, targetHints: $targetHints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLinkItemImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.embeddable, embeddable) ||
                other.embeddable == embeddable) &&
            const DeepCollectionEquality().equals(
              other._targetHints,
              _targetHints,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    href,
    embeddable,
    const DeepCollectionEquality().hash(_targetHints),
  );

  /// Create a copy of OrderLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLinkItemImplCopyWith<_$OrderLinkItemImpl> get copyWith =>
      __$$OrderLinkItemImplCopyWithImpl<_$OrderLinkItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLinkItemImplToJson(this);
  }
}

abstract class _OrderLinkItem implements OrderLinkItem {
  const factory _OrderLinkItem({
    required final String href,
    final bool? embeddable,
    @JsonKey(name: 'targetHints') final Map<String, dynamic>? targetHints,
  }) = _$OrderLinkItemImpl;

  factory _OrderLinkItem.fromJson(Map<String, dynamic> json) =
      _$OrderLinkItemImpl.fromJson;

  @override
  String get href;
  @override
  bool? get embeddable;
  @override
  @JsonKey(name: 'targetHints')
  Map<String, dynamic>? get targetHints;

  /// Create a copy of OrderLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderLinkItemImplCopyWith<_$OrderLinkItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
