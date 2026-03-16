import 'package:get/get.dart';

import '../models/cart_item.dart';

/// Local cart state for encoderit_groceries (in-memory).
/// Follows the same feature pattern as flutter_gems cart: list of items,
/// add/remove/update quantity, subtotal. Used by cart_page and checkout_page.
class LocalCartController extends GetxController {
  final RxList<CartItem> items = <CartItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Seed with default items so cart/checkout show dynamic list and prices
    if (items.isEmpty) {
      items.addAll([
        const CartItem(
          id: 'cart_1',
          name: 'Capsicum',
          price: 21.56,
          oldPrice: 22.00,
          quantity: 1,
        ),
        const CartItem(
          id: 'cart_2',
          name: 'Almonds',
          price: 17.28,
          oldPrice: 18.00,
          quantity: 1,
        ),
      ]);
    }
  }

  static const double _shippingFixed = 4.0;
  static const double _taxRate = 0.03;

  /// Subtotal of all line items.
  double get subtotal =>
      items.fold(0.0, (sum, item) => sum + item.price * item.quantity);

  /// Shipping (fixed for now).
  double get shipping => items.isEmpty ? 0.0 : _shippingFixed;

  /// Tax (3% of subtotal).
  double get tax => subtotal * _taxRate;

  /// Total (subtotal + shipping + tax).
  double get total => subtotal + shipping + tax;

  int get itemCount =>
      items.fold(0, (sum, item) => sum + item.quantity);

  /// Add a new line item. If productId matches an existing item, you can
  /// either merge (update quantity) or add as new line; we add as new line
  /// with a new id so cart stays simple.
  void addItem(CartItem item) {
    items.add(item);
  }

  /// Add item from product fields (for use from product details etc).
  void addProduct({
    required String name,
    required double price,
    double? oldPrice,
    int quantity = 1,
    int? productId,
  }) {
    final id = '${productId ?? DateTime.now().millisecondsSinceEpoch}_${items.length}';
    items.add(CartItem(
      id: id,
      productId: productId,
      name: name,
      price: price,
      oldPrice: oldPrice,
      quantity: quantity,
    ));
  }

  /// Remove item by index.
  void removeAt(int index) {
    if (index >= 0 && index < items.length) items.removeAt(index);
  }

  /// Remove item by id.
  void removeById(String id) {
    items.removeWhere((e) => e.id == id);
  }

  /// Update quantity at index. If quantity <= 0, removes the item.
  void updateQuantityAt(int index, int quantity) {
    if (index < 0 || index >= items.length) return;
    if (quantity <= 0) {
      items.removeAt(index);
      return;
    }
    items[index] = items[index].copyWith(quantity: quantity);
  }

  /// Clear all items.
  void clear() {
    items.clear();
  }
}
