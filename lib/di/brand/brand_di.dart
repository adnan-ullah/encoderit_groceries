import 'package:get_it/get_it.dart';

import '../../repositories/product_repository.dart';
import '../../controllers/brand_controller.dart';

Future<void> setupBrandDomainServices() async {
  final getIt = GetIt.instance;

  getIt.registerFactory<BrandController>(
    () => BrandController(
      productRepository: getIt<ProductRepository>(),
    ),
  );
}

