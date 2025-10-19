import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  final Color? borderColor;
  final double borderWidth;
  final bool isLocked;
  final String? lockText;
  final VoidCallback? onTap;

  const ProfileAvatar({
    super.key,
    this.size = 128,
    this.borderColor,
    this.borderWidth = 0,
    this.isLocked = false,
    this.lockText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: colors.textFieldBackground,
                border: borderWidth > 0
                    ? Border.all(
                        color: borderColor ?? colors.surfaceBorder,
                        width: borderWidth,
                      )
                    : Border.all(color: colors.surfaceBorder, width: 1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  'assets/images/profile_avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isLocked)
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LucideIcons.lock,
                            size: 24,
                            color: colors.textPrimary,
                          ),
                          if (lockText != null) ...[
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                lockText!,
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.buttonSecondaryText,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
