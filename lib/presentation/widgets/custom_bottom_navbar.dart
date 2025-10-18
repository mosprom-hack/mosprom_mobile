import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        decoration: BoxDecoration(
          color: colors.navbarBackground,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: colors.navbarBorder,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _NavbarItem(
                icon: LucideIcons.house,
                label: 'Лента',
                isActive: currentIndex == 0,
                onTap: () => onTap(0),
              ),
              _NavbarItem(
                icon: LucideIcons.users,
                label: 'Сообщества',
                isActive: currentIndex == 1,
                onTap: () => onTap(1),
              ),
              _NavbarItem(
                icon: LucideIcons.book,
                label: 'Образование',
                isActive: currentIndex == 2,
                onTap: () => onTap(2),
              ),
              _NavbarItem(
                icon: LucideIcons.user,
                label: 'Профиль',
                isActive: currentIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _NavbarItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive ? colors.navbarItemActiveBackground : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16,
                color: isActive
                    ? colors.navbarItemActiveText
                    : colors.navbarItemInactiveText,
              ),
              const SizedBox(height: 2),
              Text(
                label,
                style: AppFonts.labelSmall.copyWith(
                  color: isActive
                      ? colors.navbarItemActiveText
                      : colors.navbarItemInactiveText,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
