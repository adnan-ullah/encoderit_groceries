import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // Dark theme colors (kept for reference / future use)
  static const Color darkBackground = Color(0xFF1A1A1A);
  static const Color darkSurface = Color(0xFF2A2A2A);
  static const Color darkCard = Color(0xFF2D2D2D);

  // Teal-green palette (slightly greenish)
  static const Color tealDeep = Color(0xFF004D40);       // Dark teal-green
  static const Color tealDark = Color(0xFF00695C);      // Muted dark teal-green
  static const Color cyanPrimary = Color(0xFF00897B);    // Teal 600 — greenish primary
  static const Color cyanBright = Color(0xFF26A69A);    // Teal 400 — green-teal
  static const Color skyLight = Color(0xFF4DB6AC);       // Light teal
  static const Color mintPale = Color(0xFFB2DFDB);      // Soft pale aqua-green
  static const Color mintBright = Color(0xFF4DB6AC);    // Lively mint
  static const Color cyanPale = Color(0xFFE0F2F1);      // Teal 50 — very pale green
  static const Color seafoam = Color(0xFF80CBC4);       // Muted seafoam

  // Light theme colors (using palette)
  static const Color lightBackground = Color(0xFFF5FAF8);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightCard = Color(0xFFE0F2F1);

  // Primary accent (used across app — maps to palette)
  static const Color goldPrimary = Color(0xFF00897B);
  static const Color goldSecondary = Color(0xFF00796B);
  static const Color goldAccent = Color(0xFF26A69A);
  static const Color goldLight = Color(0xFFB2DFDB);

  // Text colors — use for light theme; dark theme uses explicit colors in darkTheme
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textTertiary = Color(0xFF9E9E9E);

  static const Color _darkTextPrimary = Color(0xFFFFFFFF);
  static const Color _darkTextSecondary = Color(0xFFB0B0B0);
  static const Color _darkTextTertiary = Color(0xFF808080);

  // Status colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFF9800);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: goldPrimary,
        secondary: goldSecondary,
        tertiary: goldAccent,
        surface: lightSurface,
        background: lightBackground,
        error: error,
        onPrimary: lightSurface,
        onSecondary: lightSurface,
        onSurface: textPrimary,
        onBackground: textPrimary,
        onError: lightSurface,
      ),
      scaffoldBackgroundColor: lightBackground,
      cardColor: lightCard,
      cardTheme: CardThemeData(
        color: lightCard,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightSurface,
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        iconTheme: const IconThemeData(color: goldPrimary),
        titleTextStyle: const TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
        titleLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: textPrimary, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(color: textPrimary, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(color: textPrimary),
        bodyMedium: TextStyle(color: textSecondary),
        bodySmall: TextStyle(color: textTertiary),
        labelLarge: TextStyle(color: textPrimary, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(color: textSecondary),
        labelSmall: TextStyle(color: textTertiary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: goldPrimary,
          foregroundColor: lightSurface,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: goldPrimary,
        foregroundColor: lightSurface,
        elevation: 4,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightCard,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: goldPrimary, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: goldPrimary, width: 2),
        ),
        labelStyle: const TextStyle(color: textSecondary),
        hintStyle: const TextStyle(color: textTertiary),
      ),
      dividerColor: Colors.grey.shade300,
      iconTheme: const IconThemeData(color: goldPrimary),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: goldPrimary,
        secondary: goldSecondary,
        tertiary: goldAccent,
        surface: darkSurface,
        background: darkBackground,
        error: error,
        onPrimary: darkBackground,
        onSecondary: darkBackground,
        onSurface: textPrimary,
        onBackground: textPrimary,
        onError: textPrimary,
      ),
      scaffoldBackgroundColor: darkBackground,
      cardColor: darkCard,
      cardTheme: CardThemeData(
        color: darkCard,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: darkSurface,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: goldPrimary),
        titleTextStyle: const TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w600),
        headlineSmall: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w600),
        titleLarge: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(color: _darkTextPrimary),
        bodyMedium: TextStyle(color: _darkTextSecondary),
        bodySmall: TextStyle(color: _darkTextTertiary),
        labelLarge: TextStyle(color: _darkTextPrimary, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(color: _darkTextSecondary),
        labelSmall: TextStyle(color: _darkTextTertiary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: goldPrimary,
          foregroundColor: darkBackground,
          elevation: 4,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: goldPrimary,
        foregroundColor: darkBackground,
        elevation: 6,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkSurface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: goldPrimary, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: goldPrimary, width: 2),
        ),
        labelStyle: const TextStyle(color: textSecondary),
        hintStyle: const TextStyle(color: textTertiary),
      ),
      dividerColor: Colors.grey.shade800,
      iconTheme: const IconThemeData(color: goldPrimary),
    );
  }
}
