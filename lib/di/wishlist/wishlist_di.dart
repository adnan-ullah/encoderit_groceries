import 'package:gems_core/gems_core.dart';
import 'package:get_it/get_it.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../../models/wishlist/wishlist_item.dart';
import '../../repositories/wishlist_repository.dart';
import '../../controllers/wishlist_controller.dart';

Future<void> setupWishlistDomainServices() async {
  final getIt = GetIt.instance;

  DIHelper.registerRepository<WishlistRepository>(
    factory: () => WishlistRepository(
      apiService: getIt<ApiService>(),
      databaseService: getIt<DatabaseService>(),
      syncService: getIt<SyncService>(),
    ),
  );

  DIHelper.registerController<WishlistController>(
    factory: () => WishlistController(
      repository: getIt<WishlistRepository>(),
    ),
  );
}

