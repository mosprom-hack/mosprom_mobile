import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/services/color_service.dart';
import '../buttons/app_button_enums.dart';
import 'app_icon_button_enums.dart';

class AppIconButton extends StatelessWidget {
  final AppIconButtonType type;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final IconData icon;
  final VoidCallback? onPressed;

  const AppIconButton({
    super.key,
    this.type = AppIconButtonType.primary,
    this.variant = AppButtonVariant.filled,
    this.size = AppButtonSize.md,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null;
    final colors = ColorService.instance;

    if (type == AppIconButtonType.secondary && variant == AppButtonVariant.filled) {
      return SizedBox(
        width: _getSize(),
        height: _getSize(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              decoration: BoxDecoration(
                color: isDisabled
                    ? colors.buttonDisabledBackground
                    : colors.buttonSecondaryBackground,
                borderRadius: BorderRadius.circular(32),
              ),
              child: _buildContent(colors, isDisabled),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: _getSize(),
      height: _getSize(),
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
        child: Center(
          child: Icon(
            icon,
            size: _getIconSize(),
            color: _getIconColor(colors, isDisabled),
          ),
        ),
      ),
    );
  }

  double _getSize() {
    switch (size) {
      case AppButtonSize.sm:
        return 32;
      case AppButtonSize.md:
        return 40;
      case AppButtonSize.lg:
        return 48;
      case AppButtonSize.xl:
        return 56;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppButtonSize.sm:
        return 16;
      case AppButtonSize.md:
        return 20;
      case AppButtonSize.lg:
        return 24;
      case AppButtonSize.xl:
        return 24;
    }
  }

  Color _getBackgroundColor(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return variant == AppButtonVariant.outline
          ? colors.transparent
          : colors.buttonDisabledBackground;
    }

    if (variant == AppButtonVariant.outline) {
      return colors.transparent;
    }

    switch (type) {
      case AppIconButtonType.primary:
        return colors.primary;
      case AppIconButtonType.secondary:
        return colors.buttonSecondaryBackground;
      case AppIconButtonType.ghost:
        return colors.transparent;
    }
  }

  Border? _getBorder(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return null;
    }

    if (variant == AppButtonVariant.filled) {
      if (type == AppIconButtonType.primary) {
        return Border.all(color: colors.primaryLight, width: 1);
      }
      return null;
    }

    if (variant == AppButtonVariant.outline) {
      switch (type) {
        case AppIconButtonType.primary:
          return Border.all(color: colors.primary, width: 1);
        case AppIconButtonType.secondary:
          return Border.all(color: colors.buttonSecondaryBorder, width: 1);
        case AppIconButtonType.ghost:
          return null;
      }
    }

    return null;
  }

  Color _getIconColor(ColorService colors, bool isDisabled) {
    if (isDisabled) {
      return colors.buttonDisabledText;
    }

    if (variant == AppButtonVariant.outline) {
      switch (type) {
        case AppIconButtonType.primary:
          return colors.primary;
        case AppIconButtonType.secondary:
        case AppIconButtonType.ghost:
          return colors.buttonSecondaryText;
      }
    }

    switch (type) {
      case AppIconButtonType.primary:
        return colors.textPrimary;
      case AppIconButtonType.secondary:
      case AppIconButtonType.ghost:
        return colors.buttonSecondaryText;
    }
  }

  Color _getSplashColor(ColorService colors) {
    switch (type) {
      case AppIconButtonType.primary:
        return colors.primaryDark.withValues(alpha: 0.3);
      case AppIconButtonType.secondary:
      case AppIconButtonType.ghost:
        return colors.buttonSecondaryText.withValues(alpha: 0.1);
    }
  }

  Color _getHighlightColor(ColorService colors) {
    switch (type) {
      case AppIconButtonType.primary:
        return colors.primaryDark.withValues(alpha: 0.2);
      case AppIconButtonType.secondary:
      case AppIconButtonType.ghost:
        return colors.buttonSecondaryText.withValues(alpha: 0.05);
    }
  }

  List<BoxShadow>? _getBoxShadow(bool isDisabled) {
    if (isDisabled) {
      return null;
    }

    if (type == AppIconButtonType.ghost) {
      return [
        BoxShadow(
          color: Colors.white.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 4),
          blurStyle: BlurStyle.inner,
        ),
      ];
    }

    if (variant == AppButtonVariant.filled && type == AppIconButtonType.primary) {
      return [
        BoxShadow(
          color: Colors.white.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 4),
          blurStyle: BlurStyle.inner,
        ),
      ];
    }

    if (variant == AppButtonVariant.outline && type == AppIconButtonType.primary) {
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
