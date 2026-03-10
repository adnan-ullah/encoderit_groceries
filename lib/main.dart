import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gems_responsive/gems_responsive.dart';
import 'package:gems_core/gems_core.dart';

import 'routes/app_pages.dart';
import 'services/app_services.dart';
import 'utils/app_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize all services using get_it
  final appServices = AppServices();
  await appServices.initialize(
    environmentMode: EnvironmentMode.development,
    appConfig: AppConfig(
      apiBaseUrl: 'https://fakestoreapi.com',
      enableLogging: true,
      apiTimeout: const Duration(seconds: 30),
    ),
  );
  //comment out
  // Pre-initialize Controllers to ensure they're always available
  // Get.put(AppServices.getIt<ProductController>(), permanent: true);


  runApp(const EncoderGroceriesApp());
}

class EncoderGroceriesApp extends StatelessWidget {
  const EncoderGroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ResponsiveHelper.baseWidth,
        ResponsiveHelper.baseHeight,
      ),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp.router(
          title: 'ShowProd - Product Showcase',
          theme: AppTheme.darkTheme,
          getPages: AppPages.routes,
          routerDelegate: GetDelegate(),
          routeInformationParser: GetInformationParser(
            initialRoute: AppRoutes.root,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
