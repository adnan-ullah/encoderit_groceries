import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../utils/app_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
                child: Center(
                  child: Icon(
                    Icons.local_florist_rounded,
                    size: 52,
                    color: AppTheme.success,
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
                        controller: _nameController,
                        hintText: 'Full name',
                        background: pillColor,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            return 'Please enter your name';
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
                          24,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              Get.snackbar(
                                'Signed up',
                                'Account created for ${_nameController.text.trim()}',
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.white,
                                colorText: AppTheme.textPrimary,
                                margin: const EdgeInsets.all(12),
                              );
                            }
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
}

class _PillTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color background;
  final bool obscureText;
  final String? Function(String?)? validator;

  const _PillTextField({
    required this.controller,
    required this.hintText,
    required this.background,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
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

