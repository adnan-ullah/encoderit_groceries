import 'package:get/get.dart';
import 'package:gems_core/gems_core.dart';

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

    result.when(
      success: (_) {
        // Go to shell root; ResponsiveBottomNavShell will show Home tab.
        Get.rootDelegate.offNamed(AppRoutes.root);
        Get.snackbar('Success', 'Login successful');
      },
      failure: (error) {
        errorMessage.value = error.message;
        Get.snackbar('Error', error.message);
      },
    );

    isLoading.value = false;
  }
}

