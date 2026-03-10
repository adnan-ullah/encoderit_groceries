import 'package:get/get.dart';


import 'nav_shell.dart';
import '../pages/home_page.dart';

class AppRoutes {
  static const root = '/';
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
      name: AppRoutes.root,
      page: () => const NavShell(),
      participatesInRootNavigator: true,
      children: [
        GetPage(
          name: AppRoutes.home,
          page: () => const HomePage(),
        ),
        // GetPage(
        //   name: AppRoutes.todos,
        //   page: () => const TodoPage(),
        //   binding: BindingsBuilder(() {
        //     // Inject controller from get_it
        //     Get.put(AppServices.getIt<TodoController>());
        //   }),
        // ),
        // GetPage(
        //   name: AppRoutes.products,
        //   page: () => const ProductPage(),
        //   binding: BindingsBuilder(() {
        //     // Inject controller from get_it - use permanent to keep it in memory
        //     // Use putIfAbsent to avoid recreating if already exists
        //     if (!Get.isRegistered<ProductController>()) {
        //       Get.put(AppServices.getIt<ProductController>(), permanent: true);
        //     }
        //   }),
        // ),

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

