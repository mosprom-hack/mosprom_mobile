import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import 'app_text_field_size.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final AppTextFieldSize size;
  final String? placeholder;
  final String? errorMessage;
  final IconData? leadingIcon;
  final bool isPassword;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool enabled;

  const AppTextField({
    super.key,
    required this.controller,
    this.size = AppTextFieldSize.md,
    this.placeholder,
    this.errorMessage,
    this.leadingIcon,
    this.isPassword = false,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;
    final hasError = widget.errorMessage != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: _getHeight(),
          decoration: BoxDecoration(
            color: colors.textFieldBackground,
            border: Border.all(color: colors.textFieldBorder, width: 1),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: _getPadding(),
            child: Row(
              children: [
                if (widget.leadingIcon != null) ...[
                  Icon(
                    widget.leadingIcon,
                    size: 20,
                    color: colors.textFieldText,
                  ),
                  SizedBox(width: _getGap()),
                ],
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    focusNode: widget.focusNode,
                    enabled: widget.enabled,
                    obscureText: _obscureText,
                    keyboardType: widget.keyboardType,
                    onChanged: widget.onChanged,
                    onSubmitted: widget.onSubmitted,
                    style: _getTextStyle().copyWith(
                      color: colors.textFieldText,
                    ),
                    cursorColor: colors.textFieldText,
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      hintStyle: _getTextStyle().copyWith(
                        color: colors.textFieldPlaceholder,
                      ),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                if (widget.isPassword) ...[
                  SizedBox(width: _getGap()),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Container(
                      width: _getIconButtonSize(),
                      height: _getIconButtonSize(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Icon(
                          _obscureText ? LucideIcons.eye : LucideIcons.eye_off,
                          size: _getIconButtonIconSize(),
                          color: colors.textFieldText,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        if (hasError) ...[
          Padding(
            padding: _getErrorPadding(),
            child: Row(
              children: [
                Icon(
                  LucideIcons.circle_alert,
                  size: 18,
                  color: colors.textFieldErrorText,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.errorMessage!,
                    style: _getErrorTextStyle().copyWith(
                      color: colors.textFieldErrorText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  double _getHeight() {
    switch (widget.size) {
      case AppTextFieldSize.sm:
        return 36;
      case AppTextFieldSize.md:
        return 46;
      case AppTextFieldSize.lg:
        return 54;
      case AppTextFieldSize.xl:
        return 64;
    }
  }

  EdgeInsets _getPadding() {
    switch (widget.size) {
      case AppTextFieldSize.sm:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case AppTextFieldSize.md:
        return const EdgeInsets.symmetric(horizontal: 18, vertical: 12);
      case AppTextFieldSize.lg:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
      case AppTextFieldSize.xl:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 20);
    }
  }

  double _getGap() {
    return widget.size == AppTextFieldSize.sm ? 4 : 8;
  }

  TextStyle _getTextStyle() {
    if (widget.size == AppTextFieldSize.sm) {
      return AppFonts.bodySmall;
    }
    return AppFonts.bodyMedium;
  }

  TextStyle _getErrorTextStyle() {
    return AppFonts.bodySmall;
  }

  double _getIconButtonSize() {
    if (widget.size == AppTextFieldSize.sm ||
        widget.size == AppTextFieldSize.md) {
      return 36;
    }
    return 52;
  }

  double _getIconButtonIconSize() {
    if (widget.size == AppTextFieldSize.sm ||
        widget.size == AppTextFieldSize.md) {
      return 16;
    }
    return 20;
  }

  EdgeInsets _getErrorPadding() {
    switch (widget.size) {
      case AppTextFieldSize.sm:
        return const EdgeInsets.only(left: 16, right: 16, top: 4);
      case AppTextFieldSize.md:
        return const EdgeInsets.only(left: 18, right: 18, top: 4);
      case AppTextFieldSize.lg:
        return const EdgeInsets.only(left: 20, right: 20, top: 4);
      case AppTextFieldSize.xl:
        return const EdgeInsets.only(left: 24, right: 24, top: 4);
    }
  }
}
