import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class AppCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;

  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;
    final isDisabled = onChanged == null;

    if (label == null) {
      return _buildCheckbox(colors, isDisabled);
    }

    return GestureDetector(
      onTap: isDisabled ? null : () => onChanged?.call(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCheckboxVisual(colors),
          const SizedBox(width: 8),
          Text(
            label!,
            style: AppFonts.bodyLarge.copyWith(
              height: 1.25,
              color: colors.checkboxLabelText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckbox(ColorService colors, bool isDisabled) {
    return GestureDetector(
      onTap: isDisabled ? null : () => onChanged?.call(!value),
      child: _buildCheckboxVisual(colors),
    );
  }

  Widget _buildCheckboxVisual(ColorService colors) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: value ? colors.checkboxSelectedBackground : Colors.transparent,
        border: value
            ? null
            : Border.all(
                color: colors.checkboxBorder,
                width: 1.5,
              ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: value
          ? Icon(
              LucideIcons.check,
              size: 16,
              color: colors.textPrimary,
            )
          : null,
    );
  }
}
