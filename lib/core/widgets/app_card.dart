import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/app_spacing.dart';

enum AppCardVariant { white, navy }

class AppCard extends StatelessWidget {
  final Widget child;
  final AppCardVariant variant;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.child,
    this.variant = AppCardVariant.white,
    this.padding = const EdgeInsets.all(AppSpacing.xl),
    this.onTap,
  });

  const AppCard.white({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.xl),
    this.onTap,
  }) : variant = AppCardVariant.white;

  const AppCard.navy({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.xl),
    this.onTap,
  }) : variant = AppCardVariant.navy;

  @override
  Widget build(BuildContext context) {
    final decoration = variant == AppCardVariant.white
        ? AttorniumTheme.whiteCard
        : AttorniumTheme.navyCard;

    Widget cardContent = Container(
      decoration: decoration,
      child: Padding(padding: padding, child: child),
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: cardContent);
    }

    return cardContent;
  }
}
