import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/auth_controller.dart';
import '../utils/app_theme.dart';
import '../routes/app_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    final theme = Theme.of(context);

    const bgColor = Color(0xFFFFF4DE); // soft cream
    const pillColor = Color(0xFFFFE1A8); // peach pills

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
                    Icons.local_grocery_store_rounded,
                    size: 52,
                    color: AppTheme.success,
                  ),
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 32),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: ResponsiveHelper.getResponsivePadding(
                    context,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      Obx(() {
                        final error = controller.errorMessage.value;
                        if (error.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            error,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppTheme.error,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }),
                      _PillTextField(
                        controller: _usernameController,
                        hintText: 'Login',
                        background: pillColor,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your login';
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
                        background: pillColor,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 4) {
                            return 'Password must be at least 4 characters';
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
                      Obx(() {
                        final isLoading = controller.isLoading.value;
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () => _onSubmit(controller),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: pillColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: isLoading
                                ? SizedBox(
                                    width:
                                        ResponsiveHelper.getResponsiveSize(
                                      context,
                                      18,
                                    ),
                                    height:
                                        ResponsiveHelper.getResponsiveSize(
                                      context,
                                      18,
                                    ),
                                    child:
                                        const CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(
                                        Colors.black,
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Login',
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
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
                        );
                      }),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: ResponsiveHelper.getResponsivePadding(
                  context,
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Get.rootDelegate.toNamed(AppRoutes.signUp),
                      behavior: HitTestBehavior.opaque,
                      child: Row(
                        children: [
                          Text(
                            'Register',
                            style: theme.textTheme.bodyMedium?.copyWith(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit(AuthController controller) {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    controller.login(
      _usernameController.text.trim(),
      _passwordController.text.trim(),
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

