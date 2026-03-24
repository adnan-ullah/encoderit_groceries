import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

enum OrderStage { processed, shipped, outForDelivery, delivered }

class LocalOrder {
  LocalOrder({
    required this.id,
    required this.title,
    required this.transactionId,
    required this.dateLabel,
    required this.status,
    required this.price,
    this.deliveryName,
    this.deliveryPhone,
    this.stage = OrderStage.processed,
  });

  final String id;
  final String title;
  final String transactionId;
  final String dateLabel;
  final String status;
  final double price;
  final String? deliveryName;
  final String? deliveryPhone;
  OrderStage stage;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'transactionId': transactionId,
        'dateLabel': dateLabel,
        'status': status,
        'price': price,
        'deliveryName': deliveryName,
        'deliveryPhone': deliveryPhone,
        'stage': stage.name,
      };

  factory LocalOrder.fromJson(Map<String, dynamic> json) => LocalOrder(
        id: json['id'] as String? ?? '',
        title: json['title'] as String? ?? '',
        transactionId: json['transactionId'] as String? ?? '',
        dateLabel: json['dateLabel'] as String? ?? '',
        status: json['status'] as String? ?? '',
        price: (json['price'] as num?)?.toDouble() ?? 0.0,
        deliveryName: json['deliveryName'] as String?,
        deliveryPhone: json['deliveryPhone'] as String?,
        stage: OrderStage.values.firstWhere(
          (e) => e.name == (json['stage'] as String? ?? ''),
          orElse: () => OrderStage.processed,
        ),
      );
}

class LocalOrdersController extends GetxController {
  final RxList<LocalOrder> orders = <LocalOrder>[].obs;
  static const _ordersKeyPrefix = 'orders_all';
  static const _sessionUserIdKey = 'auth_user_id';
  static const _sessionUserEmailKey = 'auth_user_email';

  @override
  void onInit() {
    super.onInit();
    loadOrders();
  }

  Future<String> _resolveCacheKey() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString(_sessionUserIdKey)?.trim();
    if (userId != null && userId.isNotEmpty) {
      return '${_ordersKeyPrefix}_$userId';
    }
    final email = prefs.getString(_sessionUserEmailKey)?.trim();
    if (email != null && email.isNotEmpty) {
      return '${_ordersKeyPrefix}_${email.toLowerCase()}';
    }
    return '${_ordersKeyPrefix}_guest';
  }

  Future<void> loadOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final key = await _resolveCacheKey();
    final raw = prefs.getString(key);
    if (raw == null || raw.isEmpty) {
      orders.assignAll(const <LocalOrder>[]);
      return;
    }
    try {
      final data = (jsonDecode(raw) as List)
          .map((e) => LocalOrder.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
      orders.assignAll(data);
    } catch (_) {
      orders.assignAll(const <LocalOrder>[]);
    }
  }

  Future<void> _persistOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final key = await _resolveCacheKey();
    await prefs.setString(
      key,
      jsonEncode(orders.map((e) => e.toJson()).toList()),
    );
  }

  Future<void> addOrder(LocalOrder order) async {
    orders.insert(0, order);
    await _persistOrders();
  }

  Future<void> clearOrders() async {
    orders.clear();
    await _persistOrders();
  }

  List<LocalOrder> get inProgress =>
      orders.where((o) => o.stage != OrderStage.delivered).toList();

  List<LocalOrder> get completed =>
      orders.where((o) => o.stage == OrderStage.delivered).toList();
}

