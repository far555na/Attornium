import 'package:attornium/core/theme/app_spacing.dart';
import 'package:attornium/core/theme/app_radius.dart';
import 'package:attornium/core/theme/app_colors.dart';
import 'package:attornium/core/theme/app_shadows.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppSpacing.xxl,
          right: AppSpacing.xxl,
          bottom: AppSpacing.md,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xs,
            vertical: AppSpacing.xs,
          ),
          decoration: BoxDecoration(
            color: AppColors.navy800,
            borderRadius: AppRadius.rounded,
            boxShadow: AppShadows.bottomNav,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context: context,
                index: 0,
                icon: Icons.home_outlined,
                activeIcon: Icons.home,
                label: 'หน้าแรก',
                hasBadge: false,
              ),
              _buildNavItem(
                context: context,
                index: 1,
                icon: Icons.work_outline,
                activeIcon: Icons.work,
                label: 'คดีของฉัน',
                hasBadge: false,
              ),
              _buildNavItem(
                context: context,
                index: 2,
                icon: Icons.chat_bubble_outline,
                activeIcon: Icons.chat_bubble,
                label: 'ข้อความ',
                hasBadge: true,
              ),
              _buildNavItem(
                context: context,
                index: 3,
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                label: 'โปรไฟล์',
                hasBadge: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required bool hasBadge,
  }) {
    final isSelected = navigationShell.currentIndex == index;
    final theme = Theme.of(context).bottomNavigationBarTheme;
    final selectedColor = theme.selectedItemColor ?? AppColors.gold400;
    final unselectedColor =
        theme.unselectedItemColor ?? AppColors.unselectedIcon;

    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onTap(context, index),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.navSelectedBg : Colors.transparent,
            borderRadius: AppRadius.giantRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    isSelected ? activeIcon : icon,
                    color: isSelected ? selectedColor : unselectedColor,
                    size: 22,
                  ),
                  if (hasBadge)
                    Positioned(
                      right: -2,
                      top: -2,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.error,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
              // const SizedBox(height: AppSpacing.xxs),
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                  color: isSelected ? selectedColor : unselectedColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
