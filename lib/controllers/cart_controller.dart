import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/cart_item/cart_item.dart';
import '../repositories/cart_repository.dart';

class CartController extends BaseListController<CartItem>
    with BaseControllerMixin<CartItem> {
  final CartRepository repository;

  CartController({
    required this.repository,
  });

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() => repository.getAll());
  }

  @override
  void onReady() {
    super.onReady();
    loadItems();
  }

  static const double _shippingFixed = 4.0;
  static const double _taxRate = 0.03;

  double get subtotal =>
      items.fold(0.0, (sum, item) => sum + item.price * item.quantity);

  double get shipping => items.isEmpty ? 0.0 : _shippingFixed;

  double get tax => subtotal * _taxRate;

  double get total => subtotal + shipping + tax;

  int get itemCount =>
      items.fold(0, (sum, item) => sum + item.quantity);

  Future<void> addItem(CartItem item) async {
    items.add(item);
    await repository.saveAll(items.toList());
  }

  Future<void> addProduct({
    required String name,
    required double price,
    double? oldPrice,
    int quantity = 1,
    int? productId,
  }) async {
    final id =
        '${productId ?? DateTime.now().millisecondsSinceEpoch}_${items.length}';
    items.add(CartItem(
      id: id,
      productId: productId,
      name: name,
      price: price,
      oldPrice: oldPrice,
      quantity: quantity,
    ));
    await repository.saveAll(items.toList());
  }

  Future<void> removeAt(int index) async {
    if (index >= 0 && index < items.length) {
      items.removeAt(index);
      await repository.saveAll(items.toList());
    }
  }

  Future<void> removeById(String id) async {
    items.removeWhere((e) => e.id == id);
    await repository.saveAll(items.toList());
  }

  Future<void> updateQuantityAt(int index, int quantity) async {
    if (index < 0 || index >= items.length) return;
    if (quantity <= 0) {
      await removeAt(index);
      return;
    }
    final current = items[index];
    items[index] = current.copyWith(quantity: quantity);
    await repository.saveAll(items.toList());
  }

  Future<void> clearAll() async {
    items.clear();
    await repository.saveAll(const []);
  }
}

