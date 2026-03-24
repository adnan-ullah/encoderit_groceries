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

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const bgColor = Color(0xFFFFF4DE);
    const pillColor = Color(0xFFFFE1A8);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: bgColor,
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: 96,
                height: 96,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/images/app_icon.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 24),
              ),
              Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 32,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Create account',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          16,
                        ),
                      ),
                      _PillTextField(
                        controller: _usernameController,
                        hintText: 'Username',
                        background: pillColor,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            return 'Please enter a username';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          12,
                        ),
                      ),
                      _PillTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        background: pillColor,
                        keyboardType: TextInputType.emailAddress,
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
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          12,
                        ),
                      ),
                      _PillTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        obscureText: true,
                        background: pillColor,
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
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          12,
                        ),
                      ),
                      _PillTextField(
                        controller: _confirmPasswordController,
                        hintText: 'Confirm password',
                        obscureText: true,
                        background: pillColor,
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
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          24,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            _onSubmit();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: pillColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding:
                                const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Sign Up',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.back<void>(),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Back to Login',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onSubmit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final repo = AppServices.getIt<AuthRepository>();
    final result = await repo.signUp(
      username: _usernameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text,
      confirmPassword: _confirmPasswordController.text,
    );

    result.when(
      success: (_) {
        Get.snackbar(
          'Success',
          'Account created successfully. Please log in.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: AppTheme.textPrimary,
          margin: const EdgeInsets.all(12),
        );
        Get.rootDelegate.offNamed(AppRoutes.login);
      },
      failure: (error) {
        Get.snackbar(
          'Error',
          error.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: AppTheme.textPrimary,
          margin: const EdgeInsets.all(12),
        );
      },
    );
  }
}

class _PillTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color background;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const _PillTextField({
    required this.controller,
    required this.hintText,
    required this.background,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.black87, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
      ),
    );
  }
}

