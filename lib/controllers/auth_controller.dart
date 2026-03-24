import 'package:get/get.dart';
import 'package:gems_core/gems_core.dart';

import 'cart_controller.dart';
import 'local_orders_controller.dart';
import '../repositories/auth_repository.dart';
import '../routes/app_pages.dart';

class AuthController extends GetxController {
  final AuthRepository repository;

  AuthController({
    required this.repository,
  });

  final isLoading = false.obs;
  final errorMessage = ''.obs;

  Future<void> login(String username, String password) async {
    isLoading.value = true;
    errorMessage.value = '';

    final result =
        await repository.login(username: username, password: password);

    var loginSuccess = false;
    var failureMessage = '';
    result.when(
      success: (_) => loginSuccess = true,
      failure: (error) => failureMessage = error.message,
    );

    if (loginSuccess) {
      // Refresh user-scoped local data if controllers already exist.
      if (Get.isRegistered<CartController>()) {
        await Get.find<CartController>().loadItems();
      }
      if (Get.isRegistered<LocalOrdersController>()) {
        await Get.find<LocalOrdersController>().loadOrders();
      }

      // Go to shell root; ResponsiveBottomNavShell will show Home tab.
      Get.rootDelegate.offNamed(AppRoutes.root);
      Get.snackbar('Success', 'Login successful');
    } else {
      errorMessage.value = failureMessage;
      Get.snackbar('Error', failureMessage);
    }

    isLoading.value = false;
  }
}

