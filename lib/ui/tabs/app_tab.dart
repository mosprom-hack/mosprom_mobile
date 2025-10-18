import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class AppTab extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool isActive;
  final VoidCallback? onTap;
  final Color? activeColor;

  const AppTab({
    super.key,
    required this.text,
    this.icon,
    required this.isActive,
    this.onTap,
    this.activeColor,
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
          color: isActive ? colors.tabActiveBackground : colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: _getTextColor(colors),
              ),
              const SizedBox(width: 4),
            ],
            Text(
              text,
              style: AppFonts.labelLarge.copyWith(
                color: _getTextColor(colors),
                height: 16 / 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTextColor(ColorService colors) {
    if (isActive) {
      return activeColor ?? colors.tabActiveText;
    }
    return colors.tabInactiveText;
  }
}
