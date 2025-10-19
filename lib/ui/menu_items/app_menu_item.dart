import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class AppMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isDisabled;

  const AppMenuItem({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;
    final textColor = isDisabled ? colors.buttonDisabledText : colors.buttonSecondaryText;
    final iconColor = isDisabled ? colors.buttonDisabledText : colors.buttonSecondaryText;
    final chevronColor = isDisabled ? colors.buttonDisabledText : colors.tabInactiveText;
    final backgroundColor = isDisabled ? colors.buttonDisabledBackground : colors.surfaceElevated;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(12),
          splashColor: _getSplashColor(colors),
          highlightColor: _getHighlightColor(colors),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 24,
                  color: iconColor,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    text,
                    style: AppFonts.bodyLarge.copyWith(
                      color: textColor,
                      letterSpacing: -0.43,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  LucideIcons.chevron_right,
                  size: 24,
                  color: chevronColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getSplashColor(ColorService colors) {
    return colors.buttonSecondaryText.withValues(alpha: 0.1);
  }

  Color _getHighlightColor(ColorService colors) {
    return colors.buttonSecondaryText.withValues(alpha: 0.05);
  }
}
