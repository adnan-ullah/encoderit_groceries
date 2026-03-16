import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../routes/app_pages.dart';
import '../utils/app_theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 40);

    return Scaffold(
      backgroundColor: AppTheme.lightBackground,
      body: SafeArea(
        child: Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveHelper.getResponsiveSpacing(context, 32),
              Text(
                'Order From\nThe Best\nGroceries',
                style: theme.textTheme.displaySmall?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w800,
                  height: 1.05,
                ),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 24),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: ResponsiveHelper.getResponsiveHeight(context, 260),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.mintBright,
                          AppTheme.cyanBright,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(radius),
                    ),
                    padding: ResponsiveHelper.getResponsivePadding(
                      context,
                      horizontal: 24,
                      vertical: 20,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fresh\nDaily Groceries',
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: AppTheme.textPrimary,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1,
                                ),
                              ),
                              ResponsiveHelper.getResponsiveSpacing(
                                context,
                                8,
                              ),
                              Text(
                                'Everything you need for\nyour everyday cooking.',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: AppTheme.textPrimary.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width:
                              ResponsiveHelper.getResponsiveWidth(context, 120),
                          height: ResponsiveHelper.getResponsiveHeight(
                              context, 160),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: const Icon(
                            Icons.local_grocery_store_outlined,
                            color: AppTheme.goldPrimary,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 24),
              SizedBox(
                width: double.infinity,
                height: ResponsiveHelper.getResponsiveHeight(context, 52),
                child: ElevatedButton(
                  onPressed: () {
                    Get.rootDelegate.offNamed(AppRoutes.login);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.goldPrimary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Get Started',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

