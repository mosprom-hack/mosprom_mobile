import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import 'app_tabs_variant.dart';

class AppTab extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool isActive;
  final VoidCallback? onTap;
  final Color? activeColor;
  final AppTabsVariant variant;

  const AppTab({
    super.key,
    required this.text,
    this.icon,
    required this.isActive,
    this.onTap,
    this.activeColor,
    this.variant = AppTabsVariant.defaultVariant,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: _getBackgroundColor(colors),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: _getTextColor(colors),
              ),
              const SizedBox(width: 4),
            ],
            Flexible(
              child: Text(
                text,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: AppFonts.labelLarge.copyWith(
                  color: _getTextColor(colors),
                  height: 16 / 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getBackgroundColor(ColorService colors) {
    if (!isActive) return colors.transparent;

    switch (variant) {
      case AppTabsVariant.defaultVariant:
        return colors.tabActiveBackground;
      case AppTabsVariant.filled:
        return activeColor ?? colors.tabFilledActiveBackground;
    }
  }

  Color _getTextColor(ColorService colors) {
    if (isActive) {
      return colors.tabActiveText;
    }
    return colors.tabInactiveText;
  }
}
