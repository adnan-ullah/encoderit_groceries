import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gems_responsive/gems_responsive.dart';
import 'package:gems_core/gems_core.dart';

import 'services/app_services.dart';
import 'utils/app_theme.dart';
import 'routes/app_pages.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize all services using get_it
  final appServices = AppServices();
  await appServices.initialize(
    environmentMode: EnvironmentMode.development,
    appConfig: AppConfig(
      apiBaseUrl:
          'https://encoder-staging.site/luxurious-skincare-wp/',
      enableLogging: true,
      apiTimeout: const Duration(seconds: 30),
    ),
  );

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
          theme: AppTheme.lightTheme,
          getPages: AppPages.routes,
          routerDelegate: GetDelegate(),
          routeInformationProvider: PlatformRouteInformationProvider(
            initialRouteInformation: const RouteInformation(
              location: AppRoutes.login,
            ),
          ),
          routeInformationParser: GetInformationParser(
            initialRoute: AppRoutes.login,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
