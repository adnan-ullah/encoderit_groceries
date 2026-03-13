import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../routes/app_pages.dart';
import '../utils/app_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const _items = <({IconData icon, String title})>[
    (icon: Icons.language, title: 'Change Language'),
    (icon: Icons.description_outlined, title: 'Privacy Policy'),
    (icon: Icons.description_outlined, title: 'Terms & Conditions'),
    (icon: Icons.description_outlined, title: 'Cookies Policy'),
    (icon: Icons.info_outline, title: 'About Us'),
    (icon: Icons.support_agent_outlined, title: 'Contact Us'),
    (icon: Icons.local_shipping_outlined, title: 'Delivery'),
    (icon: Icons.currency_exchange, title: 'Return & Exchange'),
    (icon: Icons.question_answer_sharp, title: 'FAQ')
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: ResponsiveHelper.getResponsiveWidth(context, 16),
        title: Text(
          'Encoder Groceries',
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppTheme.goldPrimary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 16,
            vertical: 16,
          ),
          children: [
            Center(
              child: Container(
                width: ResponsiveHelper.getResponsiveSize(context, 96),
                height: ResponsiveHelper.getResponsiveSize(context, 96),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.cyanPale,
                ),
                child: Icon(
                  Icons.person,
                  size: ResponsiveHelper.getResponsiveSize(context, 52),
                  color: AppTheme.tealDark,
                ),
              ),
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 18),
            Divider(color: Colors.grey.shade300, height: 1),
            ..._items.expand((item) sync* {
              yield _ProfileRow(
                icon: item.icon,
                title: item.title,
                onTap: () {},
              );
              yield Divider(color: Colors.grey.shade200, height: 1);
            }),
            ResponsiveHelper.getResponsiveSpacing(context, 16),
            _AuthButton(
              label: 'Sign Out',
              background: AppTheme.goldPrimary,
              foreground: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthButton extends StatelessWidget {
  const _AuthButton({
    required this.label,
    required this.background,
    required this.foreground,
    required this.onTap,
  });

  final String label;
  final Color background;
  final Color foreground;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveHelper.getResponsiveHeight(context, 46),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: foreground,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              ResponsiveHelper.getResponsiveRadius(context, 28),
            ),
          ),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: foreground,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  const _ProfileRow({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        ResponsiveHelper.getResponsiveRadius(context, 12),
      ),
      child: Padding(
        padding: ResponsiveHelper.getResponsivePadding(
          context,
          vertical: 14,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppTheme.textTertiary),
            SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 12)),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

