import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/cart_item/cart_item.dart';
import '../models/order/order_model.dart';
import '../repositories/order_repository.dart';

class OrderController extends BaseListController<OrderModel>
    with BaseControllerMixin<OrderModel> {
  final OrderRepository repository;

  OrderController({
    required this.repository,
  });

  @override
  void onReady() {
    super.onReady();
    loadItems();
  }

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() => repository.getOrdersByCurrentUser());
  }

  List<OrderModel> get inProgress => items.where((o) {
        final status = o.status.toLowerCase().trim();
        return status != 'completed' && status != 'cancelled' && status != 'refunded';
      }).toList();

  List<OrderModel> get completed => items.where((o) {
        final status = o.status.toLowerCase().trim();
        return status == 'completed';
      }).toList();

  Future<void> createLocalOrderFromCart({
    required List<CartItem> cartItems,
    required double total,
    String paymentMethodTitle = 'Cash on delivery',
  }) async {
    if (cartItems.isEmpty) return;

    final lineItems = cartItems
        .map(
          (e) => OrderLineItem(
            id: e.productId ?? DateTime.now().millisecondsSinceEpoch,
            name: e.name,
            productId: e.productId,
            quantity: e.quantity,
            total: (e.price * e.quantity).toStringAsFixed(2),
            price: e.price.round(),
          ),
        )
        .toList();

    final local = await repository.createLocalDraftOrder(
      status: 'processing',
      total: total.toStringAsFixed(2),
      paymentMethodTitle: paymentMethodTitle,
      lineItems: lineItems,
    );
    await repository.addLocalOrder(local);
    await loadItems();
  }
}

