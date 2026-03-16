/// Local wishlist item for dynamic wishlist (encoderit_groceries).
class WishlistItem {
  const WishlistItem({
    required this.id,
    required this.name,
    required this.unit,
    required this.price,
    this.productId,
    this.imageUrl,
  });

  final String id;
  final int? productId;
  final String name;
  final String unit;
  final double price;
  final String? imageUrl;
}
