import 'package:get/get.dart';

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
}

class LocalOrdersController extends GetxController {
  final RxList<LocalOrder> orders = <LocalOrder>[].obs;

  void addOrder(LocalOrder order) {
    orders.insert(0, order);
  }

  List<LocalOrder> get inProgress =>
      orders.where((o) => o.stage != OrderStage.delivered).toList();

  List<LocalOrder> get completed =>
      orders.where((o) => o.stage == OrderStage.delivered).toList();
}

