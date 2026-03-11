import 'package:flutter/material.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: ResponsiveHelper.getResponsiveWidth(context, 16),
        title: Text(
          'Shopping Cart',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: ResponsiveHelper.getResponsiveWidth(context, 220),
                      height: ResponsiveHelper.getResponsiveHeight(context, 180),
                      decoration: BoxDecoration(
                        color: AppTheme.cyanPale,
                        borderRadius: BorderRadius.circular(
                          ResponsiveHelper.getResponsiveRadius(context, 24),
                        ),
                      ),
                      child: Icon(
                        Icons.inventory_2_outlined,
                        size: ResponsiveHelper.getResponsiveSize(context, 90),
                        color: AppTheme.textTertiary,
                      ),
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 24),
                    Text(
                      'Your cart is empty! Start shopping now!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 1, color: AppTheme.textSecondary,),
            Padding(
              padding: ResponsiveHelper.getResponsivePadding(
                context,
                horizontal: 16,
                vertical: 14,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Subtotal',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const Spacer(),
                      Text(
                        '\$0.00',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppTheme.textPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                  ResponsiveHelper.getResponsiveSpacing(context, 12),
                  SizedBox(
                    width: double.infinity,
                    height: ResponsiveHelper.getResponsiveHeight(context, 52),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.goldPrimary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getResponsiveRadius(context, 28),
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Proceed to Checkout',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ),
                  ResponsiveHelper.getResponsiveSpacing(context, 10),
                  Text(
                    'Shipping, Taxes & Discount Calculate at Checkout',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

