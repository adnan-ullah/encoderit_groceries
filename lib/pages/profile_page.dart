import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_theme.dart';
import '../services/app_services.dart';
import '../routes/app_pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const _sessionUserIdKey = 'auth_user_id';
  static const _sessionUserEmailKey = 'auth_user_email';
  static const _sessionUsernameKey = 'auth_username';

  String _displayName = 'Guest User';
  String _displayEmail = 'guest@example.com';

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString(_sessionUsernameKey)?.trim();
    final savedEmail = prefs.getString(_sessionUserEmailKey)?.trim();
    final savedUserId = prefs.getString(_sessionUserIdKey)?.trim();

    String name = _displayName;
    String email = _displayEmail;

    if (savedEmail != null && savedEmail.isNotEmpty) {
      email = savedEmail;
      // If username is not available, derive a readable name from email.
      final emailPrefix = savedEmail.split('@').first;
      if (savedUsername == null || savedUsername.isEmpty) {
        name = emailPrefix.isEmpty ? 'User' : emailPrefix;
      }
    }

    if (savedUsername != null && savedUsername.isNotEmpty) {
      name = savedUsername;
    } else if (savedUserId != null && savedUserId.isNotEmpty && name == _displayName) {
      name = 'User #$savedUserId';
    }

    if (!mounted) return;
    setState(() {
      _displayName = name;
      _displayEmail = email;
    });
  }

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
            _ProfileHeaderCard(
              name: _displayName,
              email: _displayEmail,
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 16),
            _SectionCard(
              title: 'Account',
              children: const [
                _ProfileRow(
                  icon: Icons.location_on_outlined,
                  title: 'Shipping Address',
                  onTap: null,
                ),
                _ProfileRow(
                  icon: Icons.payment_outlined,
                  title: 'Payment Methods',
                  onTap: null,
                ),
                _ProfileRow(
                  icon: Icons.receipt_long_outlined,
                  title: 'Order History',
                  onTap: null,
                ),
              ],
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 12),
            _SectionCard(
              title: 'Help & Policies',
              children: _items
                  .map(
                    (item) => _ProfileRow(
                      icon: item.icon,
                      title: item.title,
                      onTap: null,
                    ),
                  )
                  .toList(),
            ),
            ResponsiveHelper.getResponsiveSpacing(context, 16),
            _AuthButton(
              label: 'Sign Out',
              background: AppTheme.goldPrimary,
              foreground: Colors.white,
              onTap: () async {
                // Clear auth and go back to login screen
                await AppServices().authService.logout();
                Get.rootDelegate.offNamed(AppRoutes.login);
              },
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
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

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

class _ProfileHeaderCard extends StatelessWidget {
  final String name;
  final String email;

  const _ProfileHeaderCard({
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 22);

    return Container(
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: ResponsiveHelper.getResponsiveSize(context, 72),
            height: ResponsiveHelper.getResponsiveSize(context, 72),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.cyanPale,
            ),
            child: Icon(
              Icons.person,
              size: ResponsiveHelper.getResponsiveSize(context, 40),
              color: AppTheme.tealDark,
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveWidth(context, 14)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.goldPrimary.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Premium Member',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppTheme.goldPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: AppTheme.textSecondary,
            size: 22,
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = ResponsiveHelper.getResponsiveRadius(context, 22);

    return Container(
      padding: ResponsiveHelper.getResponsivePadding(
        context,
        horizontal: 16,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
          ResponsiveHelper.getResponsiveSpacing(context, 6),
          const Divider(height: 1, color: Color(0xFFE8E9EC)),
          ...children.map(
            (w) => Padding(
              padding: EdgeInsets.only(
                top: ResponsiveHelper.getResponsiveHeight(context, 6),
              ),
              child: w,
            ),
          ),
        ],
      ),
    );
  }
}

