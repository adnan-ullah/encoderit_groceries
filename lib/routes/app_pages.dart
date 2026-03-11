import 'package:get/get.dart';

import 'nav_shell.dart';
import '../pages/product_page.dart';
import '../pages/login_page.dart';
import '../controllers/product_controller.dart';
import '../controllers/auth_controller.dart';
import '../services/app_services.dart';

class AppRoutes {
  static const root = '/';
  static const login = '/login';
  static const home = '/home';
  static const todos = '/todos';
  static const products = '/products';
  static const cart = '/cart';
  static const settings = '/settings';
  static const favorites = '/favorites';
  static const search = '/search';
}

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder(() {
        if (!Get.isRegistered<AuthController>()) {
          Get.put(AppServices.getIt<AuthController>(), permanent: true);
        }
      }),
    ),
    GetPage(
      name: AppRoutes.root,
      page: () => const NavShell(),
      participatesInRootNavigator: true,
      children: [
        // Home shows products list now (Todo API not available on WooCommerce backend)
        GetPage(
          name: AppRoutes.home,
          page: () => const ProductPage(),
          binding: BindingsBuilder(() {
            if (!Get.isRegistered<ProductController>()) {
              Get.put(AppServices.getIt<ProductController>(), permanent: true);
            }
          }),
        ),
        // GetPage(
        //   name: AppRoutes.todos,
        //   page: () => const TodoPage(),
        //   binding: BindingsBuilder(() {
        //     // Inject controller from get_it
        //     Get.put(AppServices.getIt<TodoController>());
        //   }),
        // ),
        GetPage(
          name: AppRoutes.products,
          page: () => const ProductPage(),
          binding: BindingsBuilder(() {
            if (!Get.isRegistered<ProductController>()) {
              Get.put(AppServices.getIt<ProductController>(), permanent: true);
            }
          }),
        ),

        // GetPage(
        //   name: AppRoutes.settings,
        //   page: () => const SettingsPage(),
        // ),
        //
        // GetPage(
        //   name: AppRoutes.search,
        //   page: () => const SearchPage(),
        //   binding: BindingsBuilder(() {
        //     if (!Get.isRegistered<search.ProductSearchController>()) {
        //       Get.put(AppServices.getIt<search.ProductSearchController>(), permanent: true);
        //     }
        //   }),
        // ),
      ],
    ),
  ];
}

