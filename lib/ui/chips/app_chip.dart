import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import 'app_chip_enums.dart';

class AppChip extends StatelessWidget {
  final String label;
  final AppChipVariant variant;
  final AppChipSize size;

  const AppChip({
    super.key,
    required this.label,
    this.variant = AppChipVariant.recommended,
    this.size = AppChipSize.xs,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      padding: EdgeInsets.all(size == AppChipSize.sm ? 8 : 6),
      decoration: BoxDecoration(
        color: variant == AppChipVariant.defaultChip
            ? colors.buttonSecondaryBackground
            : colors.chipRecommendedBackground,
        border: variant == AppChipVariant.defaultChip
            ? Border.all(color: colors.surfaceBorder, width: 0.5)
            : null,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Text(
        label,
        style: AppFonts.labelSmall.copyWith(
          color: variant == AppChipVariant.defaultChip
              ? colors.chipDefaultText
              : colors.chipRecommendedText,
          height: 12 / 10,
        ),
      ),
    );
  }
}
