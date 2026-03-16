import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../models/wishlist/wishlist_item.dart';
import '../models/product/product_model.dart';
import '../repositories/wishlist_repository.dart';

class WishlistController extends BaseListController<WishlistItem>
    with BaseControllerMixin<WishlistItem> {
  final WishlistRepository repository;

  WishlistController({
    required this.repository,
  });

  @override
  void onReady() {
    super.onReady();
    // Load persisted wishlist items from local DB when controller becomes ready.
    loadItems();
  }

  @override
  Future<void> loadItems() async {
    items.clear();
    await handleListResult(() => repository.getAll());
  }

  Future<void> addProduct(Product product) async {
    final price = double.tryParse(
          product.price ?? product.salePrice ?? product.regularPrice ?? '0',
        ) ??
        0.0;
    final unit = product.categories.isNotEmpty
        ? product.categories.first.name
        : 'Piece';
    final imageUrl =
        product.images.isNotEmpty ? product.images.first.src : null;

    final item = WishlistItem(
      id: 'wish_${product.id}_${items.length}',
      productId: product.id,
      name: product.name,
      unit: unit,
      price: price,
      imageUrl: imageUrl,
    );

    items.add(item);
    await repository.saveAll(items.toList());
  }

  bool isInWishlist(int productId) {
    return items.any((e) => e.productId == productId);
  }

  Future<void> toggleProduct(Product product) async {
    if (isInWishlist(product.id)) {
      items.removeWhere((e) => e.productId == product.id);
    } else {
      await addProduct(product);
      return;
    }
    await repository.saveAll(items.toList());
  }

  Future<void> removeById(String id) async {
    items.removeWhere((e) => e.id == id);
    await repository.saveAll(items.toList());
  }

  Future<void> removeByProductId(int productId) async {
    items.removeWhere((e) => e.productId == productId);
    await repository.saveAll(items.toList());
  }

  Future<void> clearAll() async {
    items.clear();
    await repository.saveAll(const []);
  }
}

