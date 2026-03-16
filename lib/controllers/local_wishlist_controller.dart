import 'package:get/get.dart';

import '../models/product/product_model.dart';
import '../models/wishlist_item.dart';

/// Local wishlist state for encoderit_groceries (in-memory).
/// Used by wishlist_page and can be toggled from product details.
class LocalWishlistController extends GetxController {
  final RxList<WishlistItem> items = <WishlistItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    if (items.isEmpty) {
      items.addAll([
        const WishlistItem(
          id: 'wish_1',
          name: 'Super Food Supplement',
          unit: 'Piece',
          price: 380.00,
        ),
        const WishlistItem(
          id: 'wish_2',
          name: 'Organic Honey Jar',
          unit: 'Piece',
          price: 12.99,
        ),
        const WishlistItem(
          id: 'wish_3',
          name: 'Premium Olive Oil',
          unit: 'Bottle',
          price: 24.50,
        ),
        const WishlistItem(
          id: 'wish_4',
          name: 'Whole Wheat Bread',
          unit: 'Packet',
          price: 3.29,
        ),
      ]);
    }
  }

  bool isInWishlist(int productId) {
    return items.any((e) => e.productId == productId);
  }

  void addProduct(Product product) {
    if (isInWishlist(product.id)) return;
    final price = double.tryParse(
          product.price ?? product.salePrice ?? product.regularPrice ?? '0',
        ) ??
        0.0;
    final unit = product.categories.isNotEmpty
        ? product.categories.first.name
        : 'Piece';
    final imageUrl = product.images.isNotEmpty
        ? product.images.first.src
        : null;
    items.add(WishlistItem(
      id: 'wish_${product.id}_${items.length}',
      productId: product.id,
      name: product.name,
      unit: unit,
      price: price,
      imageUrl: imageUrl,
    ));
  }

  void addItem(WishlistItem item) {
    if (item.productId != null && isInWishlist(item.productId!)) return;
    items.add(item);
  }

  void removeById(String id) {
    items.removeWhere((e) => e.id == id);
  }

  void removeByProductId(int productId) {
    items.removeWhere((e) => e.productId == productId);
  }

  void removeAt(int index) {
    if (index >= 0 && index < items.length) items.removeAt(index);
  }

  void toggleProduct(Product product) {
    if (isInWishlist(product.id)) {
      removeByProductId(product.id);
    } else {
      addProduct(product);
    }
  }

  void clear() {
    items.clear();
  }
}
