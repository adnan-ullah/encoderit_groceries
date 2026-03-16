/// Local cart line item for dynamic cart/checkout (encoderit_groceries).
/// Follows the same idea as cart line items: name, price, quantity.
class CartItem {
  const CartItem({
    required this.id,
    required this.name,
    required this.price,
    this.oldPrice,
    this.quantity = 1,
    this.productId,
  });

  final String id;
  final int? productId;
  final String name;
  final double price;
  final double? oldPrice;
  final int quantity;

  double get lineTotal => price * quantity;

  CartItem copyWith({
    String? id,
    int? productId,
    String? name,
    double? price,
    double? oldPrice,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      quantity: quantity ?? this.quantity,
    );
  }
}
