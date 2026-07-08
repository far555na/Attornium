import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static String? get baseFontFamily => GoogleFonts.notoSansThai().fontFamily;

  static TextTheme get textTheme => TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      height: 1.12,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      color: AppColors.textPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      height: 1.16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      height: 1.22,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      height: 1.25,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      height: 1.29,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      height: 1.33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      height: 1.27,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: AppColors.textPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: AppColors.textPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: AppColors.textSecondary,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: AppColors.textSecondary,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      height: 1.33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: AppColors.textMuted,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: AppColors.textPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      height: 1.33,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: AppColors.textPrimary,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      height: 1.45,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: AppColors.textMuted,
    ),
  );

  static TextStyle get appBarTitle => TextStyle(
    fontFamily: baseFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.gold400,
  );

  static TextStyle get buttonText => TextStyle(
    fontFamily: baseFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get inputHint =>
      const TextStyle(color: AppColors.hint, fontSize: 16, height: 1.5);

  static TextStyle get inputLabel => const TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get chipLabel => TextStyle(
    fontFamily: baseFontFamily,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get chipLabelSelected => TextStyle(
    fontFamily: baseFontFamily,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get bottomNavSelected => TextStyle(
    fontFamily: baseFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get bottomNavUnselected => TextStyle(
    fontFamily: baseFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
