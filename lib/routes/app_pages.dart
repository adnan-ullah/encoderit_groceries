import 'package:get/get.dart';

import '../controllers/brand_controller.dart';
import '../controllers/category_controller.dart';
import '../controllers/product_controller.dart';
import '../controllers/auth_controller.dart';
import '../services/app_services.dart';
import 'nav_shell.dart';
import '../pages/product_page.dart';
import '../pages/login_page.dart';
import '../pages/home_page.dart';
import '../pages/category_page.dart';
import '../pages/cart_page.dart';
import '../pages/profile_page.dart';
import '../pages/wishlist_page.dart';
import '../pages/category_details_page.dart';
import '../pages/offer_details_page.dart';
import '../pages/search_page.dart';
import '../pages/sign_up_page.dart';

class AppRoutes {
  static const root = '/';
  static const login = '/login';
  static const home = '/home';
  static const todos = '/todos';
  static const products = '/products';
  static const categoryDetails = '/category-details';
  static const offerDetails = '/offer-details';
  static const cart = '/cart';
  static const profile = '/profile';
  static const favorites = '/favorites';
  static const search = '/search';
  static const signUp = '/sign-up';
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
      name: AppRoutes.search,
      page: () => const SearchPage(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: AppRoutes.categoryDetails,
      page: () {
        final params = Get.parameters;
        final idParam = params['id'];
        final nameParam = params['name'];

        final int? categoryId =
            idParam != null ? int.tryParse(idParam) : null;
        final String categoryName =
            (nameParam != null && nameParam.trim().isNotEmpty)
                ? nameParam
                : 'Category';

        return CategoryDetailsPage(
          categoryId: categoryId,
          categoryName: categoryName,
        );
      },
    ),
    GetPage(
      name: AppRoutes.offerDetails,
      page: () {
        final arg = Get.arguments;
        final title = (arg is String && arg.trim().isNotEmpty) ? arg : 'Offer';
        return OfferDetailsPage(offerTitle: title);
      },
    ),
    GetPage(
      name: AppRoutes.root,
      page: () => const NavShell(),
      participatesInRootNavigator: true,
      children: [
        // Home shows products list now (Todo API not available on WooCommerce backend)
        GetPage(
          name: AppRoutes.home,
          binding: BindingsBuilder(() {
            if (!Get.isRegistered<ProductController>()) {
              Get.put(AppServices.getIt<ProductController>(), permanent: true);
            }
            if (!Get.isRegistered<CategoryController>()) {
              Get.put(AppServices.getIt<CategoryController>(), permanent: true);
            }
            if (!Get.isRegistered<BrandController>()) {
              Get.put(AppServices.getIt<BrandController>(), permanent: true);
            }
          }),
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppRoutes.products,
          page: () => const CategoryPage(),
        ),
        GetPage(
          name: AppRoutes.cart,
          page: () => const CartPage(),
        ),
        GetPage(
          name: AppRoutes.profile,
          page: () => const ProfilePage(),
        ),
        GetPage(
          name: AppRoutes.favorites,
          page: () => const WishlistPage(),
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

