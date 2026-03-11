import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gems_responsive/gems_responsive.dart';

import '../controllers/auth_controller.dart';
import '../utils/app_theme.dart';

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

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: ResponsiveHelper.getResponsivePadding(
            context,
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top back arrow like the UX
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: AppTheme.textPrimary,
                onPressed: () => Get.back<void>(),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 24),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize:
                            ResponsiveHelper.getResponsiveFontSize(context, 26),
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height:
                          ResponsiveHelper.getResponsiveHeight(context, 8),
                    ),
                    Text(
                      'Sign in to continue shopping',
                      style: TextStyle(
                        fontSize:
                            ResponsiveHelper.getResponsiveFontSize(context, 14),
                        color: AppTheme.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getResponsiveHeight(context, 32),
              ),
              Obx(() {
                final error = controller.errorMessage.value;
                if (error.isEmpty) return const SizedBox.shrink();
                return Padding(
                  padding: ResponsiveHelper.getResponsivePadding(
                    context,
                    bottom: 12,
                  ),
                  child: Text(
                    error,
                    style: TextStyle(
                      color: AppTheme.error,
                      fontSize:
                          ResponsiveHelper.getResponsiveFontSize(context, 12),
                    ),
                  ),
                );
              }),
              // Form area closely matching the UX layout
              ResponsiveForm(
                formKey: _formKey,
                padding: EdgeInsets.zero,
                fields: [
                  // Email row with "Use Phone Instead"
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.getResponsiveFontSize(
                                  context, 13),
                              fontWeight: FontWeight.w500,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Use Phone Instead',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.getResponsiveFontSize(
                                  context, 12),
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          6,
                        ),
                      ),
                      ResponsiveTextField(
                        label: '',
                        hint: 'Enter email',
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  // Password row with "Forgot Password"
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.getResponsiveFontSize(
                                  context, 13),
                              fontWeight: FontWeight.w500,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: ResponsiveHelper.getResponsiveFontSize(
                                  context, 12),
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ResponsiveHelper.getResponsiveHeight(
                          context,
                          6,
                        ),
                      ),
                      ResponsiveTextField(
                        label: '',
                        hint: 'Enter password',
                        controller: _passwordController,
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
                    ],
                  ),
                  // Remember me row
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (_) {},
                        activeColor: Colors.green,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: ResponsiveHelper.getResponsiveFontSize(
                              context, 12),
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
                submitButton: Obx(() {
                  final isLoading = controller.isLoading.value;
                  return AnimatedButton(
                    onPressed: isLoading ? null : () => _onSubmit(controller),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    borderRadius: 8,
                    padding: ResponsiveHelper.getResponsivePadding(
                      context,
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: isLoading
                        ? SizedBox(
                            width: ResponsiveHelper.getResponsiveSize(
                              context,
                              18,
                            ),
                            height: ResponsiveHelper.getResponsiveSize(
                              context,
                              18,
                            ),
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Text('Sign In'),
                  );
                }),
                actions: [
                  Center(
                    child: Padding(
                      padding: ResponsiveHelper.getResponsivePadding(
                        context,
                        top: 16,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            color: AppTheme.textSecondary,
                            fontSize: ResponsiveHelper.getResponsiveFontSize(
                              context,
                              13,
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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

