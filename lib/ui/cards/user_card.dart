import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import '../buttons/app_button_enums.dart';
import '../buttons/app_icon_button.dart';
import '../buttons/app_icon_button_enums.dart';
import '../chips/app_chip.dart';
import '../chips/app_chip_enums.dart';
import 'user_card_enums.dart';

class UserCard extends StatelessWidget {
  final String title;
  final String? description;
  final String? avatarUrl;
  final String? chipLabel;
  final AppChipVariant chipVariant;
  final UserCardSize size;
  final VoidCallback? onTap;

  const UserCard({
    super.key,
    required this.title,
    this.description,
    this.avatarUrl,
    this.chipLabel,
    this.chipVariant = AppChipVariant.recommended,
    this.size = UserCardSize.compact,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      height: size == UserCardSize.compact ? 150 : null,
      decoration: BoxDecoration(
        color: colors.buttonSecondaryBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colors.surfaceBorder,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: size == UserCardSize.compact
          ? _buildCompactContent(colors)
          : _buildExpandedContent(colors),
    );
  }

  Widget _buildCompactContent(ColorService colors) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: AppFonts.bodyMedium.copyWith(
              color: colors.textPrimary,
              height: 20 / 14,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildAvatar(colors),
            AppIconButton(
              type: AppIconButtonType.secondary,
              variant: AppButtonVariant.filled,
              size: AppButtonSize.md,
              icon: LucideIcons.chevron_right,
              onPressed: onTap,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExpandedContent(ColorService colors) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.h6.copyWith(
            color: colors.textPrimary,
          ),
        ),
        if (description != null) ...[
          const SizedBox(height: 8),
          Text(
            description!,
            style: AppFonts.bodyMedium.copyWith(
              color: colors.tabInactiveText,
            ),
          ),
        ],
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (chipLabel != null)
              AppChip(
                label: chipLabel!,
                variant: chipVariant,
                size: AppChipSize.sm,
              )
            else
              const SizedBox.shrink(),
            AppIconButton(
              type: AppIconButtonType.secondary,
              variant: AppButtonVariant.filled,
              size: AppButtonSize.md,
              icon: LucideIcons.chevron_right,
              onPressed: onTap,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAvatar(ColorService colors) {
    if (avatarUrl != null && avatarUrl!.isNotEmpty) {
      return ClipOval(
        child: Image.network(
          avatarUrl!,
          width: 46,
          height: 46,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultAvatar(colors);
          },
        ),
      );
    }

    return _buildDefaultAvatar(colors);
  }

  Widget _buildDefaultAvatar(ColorService colors) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: colors.surfaceElevated,
        border: Border.all(
          color: colors.surfaceBorder,
          width: 1,
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        LucideIcons.user_round,
        size: 20,
        color: colors.tabInactiveText,
      ),
    );
  }
}
