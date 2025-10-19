import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class ProfileCvCard extends StatelessWidget {
  final VoidCallback? onTap;

  const ProfileCvCard({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: colors.textFieldBackground,
        border: Border.all(color: colors.surfaceBorder, width: 1),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(32),
          splashColor: colors.buttonSecondaryText.withValues(alpha: 0.1),
          highlightColor: colors.buttonSecondaryText.withValues(alpha: 0.05),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Резюме',
                  style: AppFonts.bodyMedium.copyWith(
                    color: colors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '18 октября 2025',
                  style: AppFonts.bodyMedium.copyWith(
                    color: colors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
