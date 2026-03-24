import 'package:gems_core/gems_core.dart';
import 'package:gems_data_layer/gems_data_layer.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/order_controller.dart';
import '../../repositories/order_repository.dart';

Future<void> setupOrderDomainServices() async {
  final getIt = GetIt.instance;

  DIHelper.registerRepository<OrderRepository>(
    factory: () => OrderRepository(
      apiService: getIt<ApiService>(),
      databaseService: getIt<DatabaseService>(),
      syncService: getIt<SyncService>(),
    ),
  );

  DIHelper.registerController<OrderController>(
    factory: () => OrderController(
      repository: getIt<OrderRepository>(),
    ),
  );
}

