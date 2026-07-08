import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttorniumTheme {
  AttorniumTheme._();

  // Core colors
  static const Color navy900 = Color(0xFF00162F);
  static const Color navy800 = Color(0xFF002045);
  static const Color navy700 = Color(0xFF0B2A4A);

  static const Color gold500 = Color(0xFFD6A83F);
  static const Color gold400 = Color(0xFFE9C349);
  static const Color goldSoft = Color(0xFFFFF4D6);

  static const Color surface = Color(0xFFF7F9FB);
  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color border = Color(0xFFE2E8F0);

  static const Color textPrimary = Color(0xFF001B3C);
  static const Color textSecondary = Color(0xFF43474E);
  static const Color textMuted = Color(0xFF74777F);

  static const Color success = Color(0xFF2E9E5D);
  static const Color successBg = Color(0xFFE7F6EC);

  static const Color info = Color(0xFF2D6CDF);
  static const Color infoBg = Color(0xFFEAF2FF);

  static ThemeData get lightTheme {
    final baseFontFamily = GoogleFonts.notoSansThai().fontFamily;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      fontFamily: baseFontFamily,

      scaffoldBackgroundColor: surface,

      colorScheme: const ColorScheme.light(
        primary: navy800,
        onPrimary: Colors.white,
        secondary: gold500,
        onSecondary: navy900,
        tertiary: success,
        surface: surface,
        onSurface: textPrimary,
        error: Color(0xFFBA1A1A),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: navy900,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: gold400),
        titleTextStyle: TextStyle(
          fontFamily: baseFontFamily,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: gold400,
        ),
      ),

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 57,
          height: 1.12,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
          color: textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          height: 1.16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          height: 1.22,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          height: 1.25,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          height: 1.29,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          height: 1.33,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          height: 1.27,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          height: 1.43,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: textSecondary,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          height: 1.43,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: textSecondary,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          height: 1.33,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: textMuted,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          height: 1.43,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: textPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          height: 1.33,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: textPrimary,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          height: 1.45,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: textMuted,
        ),
      ),

      cardTheme: CardThemeData(
        color: cardWhite,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: border),
        ),
        shadowColor: navy900.withValues(alpha: 0.08),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: navy900,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: navy900.withValues(alpha: 0.18),
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: TextStyle(
            fontFamily: baseFontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: navy800,
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          side: const BorderSide(color: border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: TextStyle(
            fontFamily: baseFontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
          color: Color(0xFF9AA0A6),
          fontSize: 16,
          height: 1.5,
        ),
        labelStyle: const TextStyle(
          color: textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: gold500, width: 1.4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFBA1A1A)),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: Colors.white,
        selectedColor: navy800,
        disabledColor: const Color(0xFFE6E8EA),
        labelStyle: TextStyle(
          fontFamily: baseFontFamily,
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        secondaryLabelStyle: TextStyle(
          fontFamily: baseFontFamily,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        side: const BorderSide(color: border),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: navy900,
        selectedItemColor: gold400,
        unselectedItemColor: const Color(0xFFAAB0BA),
        selectedLabelStyle: TextStyle(
          fontFamily: baseFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: baseFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
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
        navy900,
        Color(0xFF001B36),
        Color(0xFF00152A),
      ],
    ),
  );

  static BoxDecoration whitePanel = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(28),
    border: Border.all(color: border),
    boxShadow: [
      BoxShadow(
        color: navy900.withValues(alpha: 0.08),
        blurRadius: 24,
        offset: const Offset(0, 10),
      ),
    ],
  );

  static BoxDecoration whiteCard = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: border),
    boxShadow: [
      BoxShadow(
        color: navy900.withValues(alpha: 0.06),
        blurRadius: 18,
        offset: const Offset(0, 8),
      ),
    ],
  );

  static BoxDecoration navyCard = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        navy800,
        navy900,
      ],
    ),
    borderRadius: BorderRadius.circular(24),
    border: Border.all(color: gold500.withValues(alpha: 0.75)),
    boxShadow: [
      BoxShadow(
        color: navy900.withValues(alpha: 0.3),
        blurRadius: 28,
        offset: const Offset(0, 14),
      ),
    ],
  );

  static BoxDecoration goldButton = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFD96B),
        gold400,
        Color(0xFFC9972C),
      ],
    ),
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(
        color: gold500.withValues(alpha: 0.3),
        blurRadius: 18,
        offset: const Offset(0, 8),
      ),
    ],
  );
}
