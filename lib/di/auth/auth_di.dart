import 'package:get_it/get_it.dart';
import 'package:gems_data_layer/gems_data_layer.dart';

import '../../repositories/auth_repository.dart';
import '../../controllers/auth_controller.dart';

Future<void> setupAuthDomainServices() async {
  final getIt = GetIt.instance;

  // Repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      apiService: getIt<ApiService>(),
    ),
  );

  // Controller
  getIt.registerFactory<AuthController>(
    () => AuthController(
      repository: getIt<AuthRepository>(),
    ),
  );
}

