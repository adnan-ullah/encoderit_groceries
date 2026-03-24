import 'dart:convert';

import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/order/order_model.dart';
import '../utils/api_endpoints.dart';

class OrderRepository extends BaseRepository<OrderModel> {
  OrderRepository({
    required super.apiService,
    required super.databaseService,
    required super.syncService,
  }) : super(baseEndpoint: ApiEndpoints.ordersBase);

  static const _sessionUserIdKey = 'auth_user_id';
  static const _sessionUserEmailKey = 'auth_user_email';
  static const _localOrdersKeyPrefix = 'orders_local';

  @override
  OrderModel fromJson(Map<String, dynamic> json) => OrderModel.fromJson(json);

  Future<String> _resolveLocalKey() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString(_sessionUserIdKey)?.trim();
    if (userId != null && userId.isNotEmpty) {
      return '${_localOrdersKeyPrefix}_$userId';
    }
    final email = prefs.getString(_sessionUserEmailKey)?.trim();
    if (email != null && email.isNotEmpty) {
      return '${_localOrdersKeyPrefix}_${email.toLowerCase()}';
    }
    return '${_localOrdersKeyPrefix}_guest';
  }

  Future<int?> _currentUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return int.tryParse(prefs.getString(_sessionUserIdKey)?.trim() ?? '');
  }

  Future<List<OrderModel>> loadLocalOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final key = await _resolveLocalKey();
    final raw = prefs.getString(key);
    if (raw == null || raw.isEmpty) return const [];
    try {
      return (jsonDecode(raw) as List)
          .map((e) => OrderModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    } catch (_) {
      return const [];
    }
  }

  Future<void> saveLocalOrders(List<OrderModel> orders) async {
    final prefs = await SharedPreferences.getInstance();
    final key = await _resolveLocalKey();
    await prefs.setString(
      key,
      jsonEncode(orders.map((e) => e.toJson()).toList()),
    );
  }

  Future<void> addLocalOrder(OrderModel order) async {
    final local = await loadLocalOrders();
    final updated = [order, ...local];
    await saveLocalOrders(updated);
  }

  Future<Result<List<OrderModel>>> getOrdersByCurrentUser() async {
    // For now, orders are handled locally until create-order API is available.
    final localOrders = await loadLocalOrders();
    return Result.success(localOrders);
  }

  Future<OrderModel> createLocalDraftOrder({
    required String status,
    required String total,
    required String paymentMethodTitle,
    required List<OrderLineItem> lineItems,
  }) async {
    final now = DateTime.now();
    final id = -now.microsecondsSinceEpoch;
    final customerId = await _currentUserId() ?? 0;
    return OrderModel(
      id: id,
      parentId: 0,
      customerId: customerId,
      status: status,
      currency: 'USD',
      version: 'local',
      pricesIncludeTax: false,
      dateCreated: now.toIso8601String(),
      dateModified: now.toIso8601String(),
      total: total,
      transactionId: 'LOCAL-${now.millisecondsSinceEpoch}',
      paymentMethod: 'cod',
      paymentMethodTitle: paymentMethodTitle,
      number: id.abs().toString(),
      lineItems: lineItems,
      billing: const OrderBilling(),
    );
  }
}

