import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/cart_controller.dart';
import '../routes/app_pages.dart';
import '../services/app_services.dart';
import '../utils/app_theme.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String _addressTitle = 'Home';
  String _addressDetails =
      '123 Encoder Street, Groceries Lane,\nCity, Country 12345';

  Future<void> _onChangeAddressTap() async {
    final controller = TextEditingController(text: _addressDetails);
    final theme = Theme.of(context);

    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            width: double.infinity,
            padding: ResponsiveHelper.getResponsivePadding(
              context,
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 24),
                ),
                topRight: Radius.circular(
                  ResponsiveHelper.getResponsiveRadius(context, 24),
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.18),
                  blurRadius: 16,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Change Delivery Address',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 12),
                TextField(
                  controller: controller,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your full delivery address',
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 12),
                SizedBox(
                  width: double.infinity,
                  height: ResponsiveHelper.getResponsiveHeight(context, 48),
                  child: ElevatedButton(
                    onPressed: () {
                      final text = controller.text.trim();
                      if (text.isNotEmpty) {
                        Navigator.of(context).pop(text);
                      } else {
                        Navigator.of(context).pop();
                      }
                    },
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
                      'Save Address',
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
        );
      },
    );

    if (result != null && result.trim().isNotEmpty) {
      setState(() {
        _addressDetails = result.trim();
      });
    }
  }

  CartController get _cart {
    if (!Get.isRegistered<CartController>()) {
      Get.put(AppServices.getIt<CartController>(), permanent: true);
    }
    return Get.find<CartController>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: ResponsiveHelper.getResponsiveWidth(context, 16),
        title: Text(
          'Checkout',
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppTheme.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SectionHeader(
                      title: 'Delivery Address',
                      actionLabel: 'Change',
                      onActionTap: _onChangeAddressTap,
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 8),
                    _AddressCard(
                      title: _addressTitle,
                      details: _addressDetails,
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 20),
                    _SectionHeader(
                      title: 'Payment Method',
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 8),
                    _PaymentMethodCard(),
                    ResponsiveHelper.getResponsiveSpacing(context, 20),
                    _SectionHeader(
                      title: 'Order Summary',
                    ),
                    ResponsiveHelper.getResponsiveSpacing(context, 8),
                    _OrderSummaryCard(cart: _cart),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: AppTheme.textSecondary,
            ),
            _BottomBar(cart: _cart),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    this.actionLabel,
    this.onActionTap,
  });

  final String title;
  final String? actionLabel;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            color: AppTheme.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        if (actionLabel != null && onActionTap != null)
          TextButton(
            onPressed: onActionTap,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              actionLabel!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppTheme.goldPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({
    required this.title,
    required this.details,
  });

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 14,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: AppTheme.lightSurface,
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getResponsiveRadius(context, 16),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 36),
            height: ResponsiveHelper.getResponsiveHeight(context, 36),
            decoration: BoxDecoration(
              color: AppTheme.goldPrimary.withOpacity(0.15),
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 12),
              ),
            ),
            child: const Icon(
              Icons.location_on_outlined,
              color: AppTheme.goldPrimary,
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 4),
                Text(
                  details,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentMethodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 14,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: AppTheme.lightSurface,
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getResponsiveRadius(context, 16),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: ResponsiveHelper.getResponsiveWidth(context, 40),
            height: ResponsiveHelper.getResponsiveHeight(context, 40),
            decoration: BoxDecoration(
              color: AppTheme.cyanPale,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getResponsiveRadius(context, 12),
              ),
            ),
            child: const Icon(
              Icons.payments_outlined,
              color: AppTheme.tealDark,
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cash on Delivery',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ResponsiveHelper.getResponsiveSpacing(context, 4),
                Text(
                  'Pay in cash when your order arrives at your doorstep.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Radio<bool>(
            value: true,
            groupValue: true,
            onChanged: null,
            activeColor: AppTheme.goldPrimary,
          ),
        ],
      ),
    );
  }
}

class _OrderSummaryCard extends StatelessWidget {
  const _OrderSummaryCard({required this.cart});

  final CartController cart;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget row(String label, String value, {bool isBold = false}) {
      return Row(
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      );
    }

    return Obx(() {
      return Container(
        width: double.infinity,
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          horizontal: 14,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: AppTheme.lightSurface,
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getResponsiveRadius(context, 16),
          ),
        ),
        child: Column(
          children: [
            row('Subtotal', '\$${cart.subtotal.toStringAsFixed(2)}'),
            ResponsiveHelper.getResponsiveSpacing(context, 6),
            row('Shipping', '\$${cart.shipping.toStringAsFixed(2)}'),
            ResponsiveHelper.getResponsiveSpacing(context, 6),
            row('Tax', '\$${cart.tax.toStringAsFixed(2)}'),
            ResponsiveHelper.getResponsiveSpacing(context, 8),
            const Divider(
              height: 1,
              color: AppTheme.textSecondary,
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 8),
            row('Total', '\$${cart.total.toStringAsFixed(2)}', isBold: true),
          ],
        ),
      );
    });
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.cart});

  final CartController cart;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Obx(() => Padding(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Payable Amount',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$${cart.total.toStringAsFixed(2)}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              ResponsiveHelper.getResponsiveSpacing(context, 10),
              SizedBox(
                width: double.infinity,
                height: ResponsiveHelper.getResponsiveHeight(context, 52),
                child: ElevatedButton(
                  onPressed: () {
                    // In a real app you would submit the order here.
                    // For now we simply navigate to My Orders.
                    Navigator.of(context).popUntil(
                      (route) => route.isFirst,
                    );
                    Get.rootDelegate.toNamed(AppRoutes.myOrders);
                  },
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
                'Place Order',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

