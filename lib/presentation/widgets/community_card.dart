import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import '../../ui/buttons/app_icon_button.dart';
import '../../ui/buttons/app_button_enums.dart';
import '../../ui/buttons/app_icon_button_enums.dart';

class CommunityCard extends StatelessWidget {
  final String name;
  final String category;
  final String? avatarUrl;
  final VoidCallback? onPlusPressed;

  const CommunityCard({
    super.key,
    required this.name,
    required this.category,
    this.avatarUrl,
    this.onPlusPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return SizedBox(
      height: 62,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            _buildAvatar(colors),
            const SizedBox(width: 8),
            Expanded(
              child: _buildInfo(colors),
            ),
            AppIconButton(
              type: AppIconButtonType.secondary,
              variant: AppButtonVariant.filled,
              size: AppButtonSize.md,
              icon: LucideIcons.plus,
              onPressed: onPlusPressed ?? () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(ColorService colors) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: colors.surfaceElevated,
        border: Border.all(
          color: colors.surfaceBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: avatarUrl != null && avatarUrl!.isNotEmpty
            ? Image.network(
                avatarUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildAvatarPlaceholder(colors);
                },
              )
            : _buildAvatarPlaceholder(colors),
      ),
    );
  }

  Widget _buildAvatarPlaceholder(ColorService colors) {
    return Container(
      color: colors.surfaceElevated,
    );
  }

  Widget _buildInfo(ColorService colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: AppFonts.h6.copyWith(
            color: colors.textPrimary.withValues(alpha: 0.9),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          category,
          style: const TextStyle(
            fontFamily: AppFonts.sfpro,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 18 / 13,
            letterSpacing: -0.08,
            color: Color(0xFF464646),
          ),
        ),
      ],
    );
  }
}
