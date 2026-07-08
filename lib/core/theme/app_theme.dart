import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_spacing.dart';
import 'app_radius.dart';
import 'app_shadows.dart';

class AttorniumTheme {
  AttorniumTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: AppTextStyles.baseFontFamily,
      scaffoldBackgroundColor: AppColors.surface,

      colorScheme: const ColorScheme.light(
        primary: AppColors.navy800,
        onPrimary: Colors.white,
        secondary: AppColors.gold500,
        onSecondary: AppColors.navy900,
        tertiary: AppColors.success,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
        error: AppColors.error,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.navy900,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: AppColors.gold400),
        titleTextStyle: AppTextStyles.appBarTitle,
      ),

      textTheme: AppTextStyles.textTheme,

      cardTheme: CardThemeData(
        color: AppColors.cardWhite,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.tripleExtraLarge,
          side: const BorderSide(color: AppColors.border),
        ),
        shadowColor: AppColors.navy900.withValues(alpha: 0.08),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.navy900,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: AppColors.navy900.withValues(alpha: 0.18),
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.large),
          textStyle: AppTextStyles.buttonText,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.navy800,
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: 14,
          ),
          side: const BorderSide(color: AppColors.border),
          shape: RoundedRectangleBorder(borderRadius: AppRadius.large),
          textStyle: AppTextStyles.buttonText,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: AppTextStyles.inputHint,
        labelStyle: AppTextStyles.inputLabel,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        border: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: const BorderSide(color: AppColors.gold500, width: 1.4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: const BorderSide(color: AppColors.error),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: Colors.white,
        selectedColor: AppColors.navy800,
        disabledColor: AppColors.disabled,
        labelStyle: AppTextStyles.chipLabel,
        secondaryLabelStyle: AppTextStyles.chipLabelSelected,
        side: const BorderSide(color: AppColors.border),
        shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: 10,
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.navy900,
        selectedItemColor: AppColors.gold400,
        unselectedItemColor: AppColors.unselectedIcon,
        selectedLabelStyle: AppTextStyles.bottomNavSelected,
        unselectedLabelStyle: AppTextStyles.bottomNavUnselected,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }

  static BoxDecoration darkNavyBackground = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.navy900,
        AppColors.navyPanelBg1,
        AppColors.navyPanelBg2,
      ],
    ),
  );

  static BoxDecoration whitePanel = BoxDecoration(
    color: Colors.white,
    borderRadius: AppRadius.hugeRadius,
    border: Border.all(color: AppColors.border),
    boxShadow: AppShadows.card,
  );

  static BoxDecoration whiteCard = BoxDecoration(
    color: Colors.white,
    borderRadius: AppRadius.doubleExtraLarge,
    border: Border.all(color: AppColors.border),
    boxShadow: AppShadows.cardSmall,
  );

  static BoxDecoration navyCard = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [AppColors.navy800, AppColors.navy900],
    ),
    borderRadius: AppRadius.doubleExtraLarge,
    border: Border.all(color: AppColors.gold500.withValues(alpha: 0.75)),
    boxShadow: AppShadows.glow,
  );

  static BoxDecoration goldButton = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppColors.goldButtonBg1,
        AppColors.gold400,
        AppColors.goldButtonBg3,
      ],
    ),
    borderRadius: AppRadius.extraLarge,
    boxShadow: AppShadows.goldButton,
  );
}
