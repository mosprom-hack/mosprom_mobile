import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class AppChipbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool>? onChanged;

  const AppChipbox({
    super.key,
    required this.label,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;
    final isDisabled = onChanged == null;

    return GestureDetector(
      onTap: isDisabled ? null : () => onChanged?.call(!value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: value ? colors.primary : colors.surfaceElevated,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          label,
          style: AppFonts.labelLarge.copyWith(
            color: colors.textPrimary,
          ),
        ),
      ),
    );
  }
}
