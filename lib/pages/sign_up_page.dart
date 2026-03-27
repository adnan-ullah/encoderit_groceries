import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';
import '../repositories/auth_repository.dart';
import '../services/app_services.dart';
import '../routes/app_pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _lastNameController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isSubmitting = false;
  bool _isNavigatingToLogin = false;

  void _showTopMessage({
    required String title,
    required String message,
    required bool isError,
  }) {
    if (!mounted) return;

    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger != null) {
      messenger.hideCurrentMaterialBanner();
      messenger.showMaterialBanner(
        MaterialBanner(
          content: Text(
            '$title: $message',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          backgroundColor: isError
              ? Colors.red.shade50
              : AppTheme.goldPrimary.withOpacity(0.12),
          leading: Icon(
            isError ? Icons.error_outline : Icons.check_circle_outline,
            color: isError ? Colors.red : AppTheme.goldPrimary,
          ),
          actions: [
            TextButton(
              onPressed: messenger.hideCurrentMaterialBanner,
              child: const Text('OK'),
            ),
          ],
        ),
      );
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          messenger.hideCurrentMaterialBanner();
        }
      });
      return;
    }

    // Fallback if ScaffoldMessenger isn't available at runtime.
    try {
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.TOP,
      );
    } catch (_) {}
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = theme.scaffoldBackgroundColor;
    final primary = AppTheme.goldPrimary;
    const brandBlue = Color(0xFF00A6D6);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppTheme.cyanPale.withOpacity(0.55),
                      Colors.white.withOpacity(0.2),
                      theme.scaffoldBackgroundColor,
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              behavior: HitTestBehavior.translucent,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final maxWidth =
                      ResponsiveHelper.getResponsiveWidth(context, 520);

                  return Padding(
                    padding: ResponsiveHelper.getResponsivePadding(
                      context,
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ResponsiveHelper.getResponsiveHeight(context, 10),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: primary.withOpacity(0.14),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/images/app_icon_2.png',
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Icon(
                                  Icons.local_grocery_store_rounded,
                                  color: primary,
                                  size: 50,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Fresh Groceries',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppTheme.goldPrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getResponsiveHeight(context, 14),
                        ),
                        Expanded(
                          child: Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: maxWidth),
                              child: Form(
                                key: _formKey,
                                child: Card(
                                  elevation: 10,
                                  shadowColor: Colors.black.withOpacity(0.12),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      ResponsiveHelper.getResponsiveRadius(
                                        context,
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: ResponsiveHelper.getResponsivePadding(
                                      context,
                                      horizontal: 18,
                                      vertical: 18,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Center(
                                          child: Text(
                                            'Sign Up',
                                            style: theme.textTheme.headlineMedium
                                                ?.copyWith(
                                              fontWeight: FontWeight.w900,
                                              color: AppTheme.textPrimary,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Center(
                                          child: Text(
                                            'Enter your personal data to create your account.',
                                            style: theme.textTheme.bodyMedium?.copyWith(
                                              color: AppTheme.textSecondary,
                                              height: 1.35,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: ResponsiveHelper.getResponsiveHeight(
                                            context,
                                            14,
                                          ),
                                        ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: AppTheme.textSecondary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                _ModernTextField(
                                  controller: _usernameController,
                                  hintText: 'User Name',
                                  prefixIcon: Icons.person_outline,
                                  validator: (v) {
                                    if (v == null || v.trim().isEmpty) {
                                      return 'Please enter a username';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 14)),
                      Text(
                        'Email Address',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _ModernTextField(
                        controller: _emailController,
                        hintText: 'Email Address',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!v.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 14)),
                      Text(
                        'Password',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _ModernTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        obscureText: _obscurePassword,
                        prefixIcon: Icons.lock_outline,
                        suffix: IconButton(
                          onPressed: () => setState(() {
                            _obscurePassword = !_obscurePassword;
                          }),
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (v.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Must contain at least 6 characters.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 10)),
                      _ModernTextField(
                        controller: _confirmPasswordController,
                        hintText: 'Confirm Password',
                        obscureText: _obscureConfirmPassword,
                        prefixIcon: Icons.lock_outline,
                        suffix: IconButton(
                          onPressed: () => setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          }),
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (v != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: ResponsiveHelper.getResponsiveHeight(context, 18)),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: _isSubmitting ? null : _onSubmit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary,
                            disabledBackgroundColor: primary.withOpacity(0.55),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: _isSubmitting
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor:
                                        AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                )
                              : Text(
                                  'Sign Up',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an Account? ',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: AppTheme.textSecondary,
                            ),
                          ),
                          GestureDetector(
                            onTap: _isNavigatingToLogin
                                ? null
                                : () async {
                                    setState(() {
                                      _isNavigatingToLogin = true;
                                    });
                                    try {
                                      await Get.rootDelegate
                                          .offNamed(AppRoutes.login);
                                    } finally {
                                      if (mounted) {
                                        setState(() {
                                          _isNavigatingToLogin = false;
                                        });
                                      }
                                    }
                                  },
                            behavior: HitTestBehavior.opaque,
                            child: _isNavigatingToLogin
                                ? SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(primary),
                                    ),
                                  )
                                : Text(
                                    'Sign In',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: primary,
                                      fontWeight: FontWeight.w800,
                                      decorationThickness: 2,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getResponsiveHeight(context, 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Powered by ',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: AppTheme.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Image.asset(
                              'assets/images/encoderit_logo.png',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'EncoderIT Limited',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: brandBlue,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getResponsiveHeight(context, 6),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSubmit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_isSubmitting) return;

    setState(() => _isSubmitting = true);

    try {
      final repo = AppServices.getIt<AuthRepository>();
      final result = await repo.signUp(
        username: _usernameController.text.trim(),
        email: _emailController.text.trim(),
        password: _passwordController.text,
        confirmPassword: _confirmPasswordController.text,
      );

      result.when(
        success: (_) {
          _showTopMessage(
            title: 'Success',
            message: 'Account created successfully. Please log in.',
            isError: false,
          );
          Get.rootDelegate.offNamed(AppRoutes.login);
        },
        failure: (error) {
          _showTopMessage(
            title: 'Error',
            message: error.message,
            isError: true,
          );
        },
      );
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppTheme.textSecondary.withOpacity(0.18)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: AppTheme.textPrimary),
              const SizedBox(width: 10),
              Text(
                label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppTheme.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppTheme.textSecondary.withOpacity(0.18),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          'OR',
          style: theme.textTheme.bodySmall?.copyWith(
            color: AppTheme.textSecondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 1,
            color: AppTheme.textSecondary.withOpacity(0.18),
          ),
        ),
      ],
    );
  }
}

class _ModernTextField extends StatelessWidget {
  const _ModernTextField({
    required this.controller,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.suffix,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          color: AppTheme.textSecondary.withOpacity(0.6),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon == null
            ? null
            : Icon(prefixIcon, color: AppTheme.textSecondary),
        suffixIcon: suffix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppTheme.textSecondary.withOpacity(0.18)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppTheme.textSecondary.withOpacity(0.18)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppTheme.goldPrimary.withOpacity(0.85)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
    );
  }
}

