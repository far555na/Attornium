import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 18.0;
  static const double xxl = 20.0;
  static const double xxxl = 24.0;
  static const double huge = 28.0;
  static const double giant = 32.0;
  static const double max = 999.0;

  static BorderRadius get extraSmall => BorderRadius.circular(xs);
  static BorderRadius get small => BorderRadius.circular(sm);
  static BorderRadius get medium => BorderRadius.circular(md);
  static BorderRadius get large => BorderRadius.circular(lg);
  static BorderRadius get extraLarge => BorderRadius.circular(xl);
  static BorderRadius get doubleExtraLarge => BorderRadius.circular(xxl);
  static BorderRadius get tripleExtraLarge => BorderRadius.circular(xxxl);
  static BorderRadius get hugeRadius => BorderRadius.circular(huge);
  static BorderRadius get giantRadius => BorderRadius.circular(giant);
  static BorderRadius get rounded => BorderRadius.circular(max);
}
