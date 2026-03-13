import 'package:get_it/get_it.dart';

import '../../repositories/product_repository.dart';
import '../../controllers/category_controller.dart';

Future<void> setupCategoryDomainServices() async {
  final getIt = GetIt.instance;

  getIt.registerFactory<CategoryController>(
    () => CategoryController(
      productRepository: getIt<ProductRepository>(),
    ),
  );
}

