  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color background = Color(0xFF121414);
  static const Color surfaceContainer = Color(0xFF1E2020);
  static const Color surfaceContainerLow = Color(0xFF1A1C1C);
  static const Color surfaceContainerHigh = Color(0xFF282A2B);
  static const Color tertiaryContainer = Color(0xFF1D1D43);

  static const Color primaryGold = Color(0xFFE9C349);
  static const Color secondaryFixedDim = Color(0xFFFFE088);
  static const Color onSecondary = Color(0xFF3C2F00);

  static const Color outline = Color(0xFF908F9E);
  static const Color outlineVariant = Color(0xFF464653);

  static const Color onSurface = Color(0xFFE2E2E2);
  static const Color onSurfaceVariant = Color(0xFFC6C5D5);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.background,
        primary: AppColors.primaryGold,
        secondary: AppColors.primaryGold,
        tertiary: AppColors.tertiaryContainer,
        onSurface: AppColors.onSurface,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.playfairDisplay(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryGold,
          letterSpacing: 2.0,
        ),
        headlineMedium: GoogleFonts.playfairDisplay(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.onSurface,
        ),
        bodyMedium: GoogleFonts.montserrat(
          fontSize: 16,
          color: AppColors.onSurfaceVariant,
        ),
        labelLarge: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: AppColors.onSecondary,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceContainer,
        hintStyle: GoogleFonts.montserrat(color: AppColors.outline),
        prefixIconColor: AppColors.outline,
        suffixIconColor: AppColors.outline,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryGold, width: 1.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGold,
          foregroundColor: AppColors.onSecondary,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
