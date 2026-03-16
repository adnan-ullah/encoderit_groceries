import 'package:gems_core/gems_core.dart';
import 'package:get_it/get_it.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../../repositories/cart_repository.dart';
import '../../controllers/cart_controller.dart';

Future<void> setupCartDomainServices() async {
  final getIt = GetIt.instance;

  DIHelper.registerRepository<CartRepository>(
    factory: () => CartRepository(
      apiService: getIt<ApiService>(),
      databaseService: getIt<DatabaseService>(),
      syncService: getIt<SyncService>(),
    ),
  );

  DIHelper.registerController<CartController>(
    factory: () => CartController(
      repository: getIt<CartRepository>(),
    ),
  );
}

