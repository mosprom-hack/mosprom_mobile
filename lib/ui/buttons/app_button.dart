import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import 'app_button_enums.dart';

class AppButton extends StatelessWidget {
  final AppButtonType type;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final String text;
  final VoidCallback? onPressed;
  final IconData? leadingIcon;
  final IconData? trailingIcon;

  const AppButton({
    super.key,
    this.type = AppButtonType.primary,
    this.variant = AppButtonVariant.filled,
    this.size = AppButtonSize.md,
    required this.text,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null;
    final colors = ColorService.instance;

    if (type == AppButtonType.secondary && variant == AppButtonVariant.filled) {
      return SizedBox(
        height: _getHeight(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              decoration: BoxDecoration(
                color: colors.buttonSecondaryBackground,
                borderRadius: BorderRadius.circular(32),
              ),
              child: _buildContent(colors, isDisabled),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: _getHeight(),
      child: Container(
        decoration: BoxDecoration(
          color: _getBackgroundColor(colors, isDisabled),
          border: _getBorder(colors, isDisabled),
          borderRadius: BorderRadius.circular(32),
          boxShadow: _getBoxShadow(isDisabled),
        ),
        child: _buildContent(colors, isDisabled),
      ),
    );
  }

  Widget _buildContent(ColorService colors, bool isDisabled) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(32),
        splashColor: _getSplashColor(colors),
        highlightColor: _getHighlightColor(colors),
        child: Padding(
          padding: _getPadding(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leadingIcon != null) ...[
                Icon(
                  leadingIcon,
                  size: 20,
                  color: _getTextColor(colors, isDisabled),
                ),
                SizedBox(width: _getGap()),
              ],
              Text(
                text,
                style: _getTextStyle().copyWith(
                  color: _getTextColor(colors, isDisabled),
                ),
              ),
              if (trailingIcon != null) ...[
                SizedBox(width: _getGap()),
                Icon(
                  trailingIcon,
                  size: 20,
                  color: _getTextColor(colors, isDisabled),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  double _getHeight() {
    switch (size) {
      case AppButtonSize.sm:
        return 36;
      case AppButtonSize.md:
        return 46;
      case AppButtonSize.lg:
        return 54;
      case AppButtonSize.xl:
        return 64;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case AppButtonSize.sm:
        return const EdgeInsets.all(12);
      case AppButtonSize.md:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 12);
      case AppButtonSize.lg:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
      case AppButtonSize.xl:
        return const EdgeInsets.symmetric(horizontal: 28, vertical: 18);
    }
  }

  double _getGap() {
    return size == AppButtonSize.sm ? 2 : 4;
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case AppButtonSize.sm:
        return AppFonts.buttonSmall;
      case AppButtonSize.md:
        return AppFonts.buttonMedium;
      case AppButtonSize.lg:
        return AppFonts.buttonMedium;
      case AppButtonSize.xl:
        return AppFonts.buttonLarge;
    }
  }

  Color _getBackgroundColor(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return colors.buttonDisabledBackground;
    }

    if (variant == AppButtonVariant.outline) {
      return colors.transparent;
    }

    switch (type) {
      case AppButtonType.primary:
        return colors.primary;
      case AppButtonType.secondary:
        return colors.buttonSecondaryBackground;
      case AppButtonType.ghost:
        return colors.transparent;
      case AppButtonType.error:
        return colors.error;
    }
  }

  Border? _getBorder(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return null;
    }

    if (variant == AppButtonVariant.filled) {
      switch (type) {
        case AppButtonType.primary:
          return Border.all(color: colors.primaryLight, width: 1);
        case AppButtonType.error:
          return Border.all(color: colors.errorLight, width: 1);
        default:
          return null;
      }
    }

    if (variant == AppButtonVariant.outline) {
      switch (type) {
        case AppButtonType.primary:
          return Border.all(color: colors.primary, width: 1);
        case AppButtonType.secondary:
          return Border.all(color: colors.buttonSecondaryBorder, width: 1);
        case AppButtonType.ghost:
          return null;
        case AppButtonType.error:
          return Border.all(color: colors.error, width: 1);
      }
    }

    return null;
  }

  Color _getTextColor(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return colors.buttonDisabledText;
    }

    switch (type) {
      case AppButtonType.primary:
        return colors.textPrimary;
      case AppButtonType.secondary:
        return colors.buttonSecondaryText;
      case AppButtonType.ghost:
        return colors.buttonSecondaryText;
      case AppButtonType.error:
        return colors.textPrimary;
    }
  }

  Color _getSplashColor(ColorService colors) {
    switch (type) {
      case AppButtonType.primary:
        return colors.primaryDark.withValues(alpha: 0.3);
      case AppButtonType.secondary:
      case AppButtonType.ghost:
        return colors.buttonSecondaryText.withValues(alpha: 0.1);
      case AppButtonType.error:
        return colors.errorDark.withValues(alpha: 0.3);
    }
  }

  Color _getHighlightColor(ColorService colors) {
    switch (type) {
      case AppButtonType.primary:
        return colors.primaryDark.withValues(alpha: 0.2);
      case AppButtonType.secondary:
      case AppButtonType.ghost:
        return colors.buttonSecondaryText.withValues(alpha: 0.05);
      case AppButtonType.error:
        return colors.errorDark.withValues(alpha: 0.2);
    }
  }

  List<BoxShadow>? _getBoxShadow(bool isDisabled) {
    if (isDisabled) {
      return null;
    }

    if (type == AppButtonType.ghost) {
      return [
        BoxShadow(
          color: Colors.white.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 4),
          blurStyle: BlurStyle.inner,
        ),
      ];
    }

    if (variant == AppButtonVariant.filled && type != AppButtonType.secondary) {
      return [
        BoxShadow(
          color: Colors.white.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 4),
          blurStyle: BlurStyle.inner,
        ),
      ];
    }

    return null;
  }
}
