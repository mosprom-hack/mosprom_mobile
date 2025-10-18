import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/buttons/app_icon_button.dart';
import '../../../../ui/buttons/app_icon_button_enums.dart';
import '../../../../ui/buttons/app_button_enums.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rss_feed_rounded,
                size: 64,
                color: colors.textSecondary,
              ),
              const SizedBox(height: 24),
              Text(
                'Упс, этот раздел\nпока ещё пустой',
                textAlign: TextAlign.center,
                style: AppFonts.h4.copyWith(
                  color: colors.textSecondary,
                ),
              ),
              const SizedBox(height: 48),
              Text(
                'Примеры иконочных кнопок',
                style: AppFonts.h5.copyWith(color: colors.textPrimary),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.sm,
                    icon: LucideIcons.heart,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.md,
                    icon: LucideIcons.star,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.lg,
                    icon: LucideIcons.bookmark,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.xl,
                    icon: LucideIcons.share_2,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.sm,
                    icon: LucideIcons.heart,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.md,
                    icon: LucideIcons.star,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.lg,
                    icon: LucideIcons.bookmark,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.xl,
                    icon: LucideIcons.share_2,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.sm,
                    icon: LucideIcons.message_circle,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.md,
                    icon: LucideIcons.settings,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.lg,
                    icon: LucideIcons.bell,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.xl,
                    icon: LucideIcons.user,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.sm,
                    icon: LucideIcons.search,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.md,
                    icon: LucideIcons.settings,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.lg,
                    icon: LucideIcons.menu,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.outline,
                    size: AppButtonSize.xl,
                    icon: LucideIcons.plus,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.ghost,
                    size: AppButtonSize.sm,
                    icon: LucideIcons.x,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.ghost,
                    size: AppButtonSize.md,
                    icon: LucideIcons.chevron_left,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.ghost,
                    size: AppButtonSize.lg,
                    icon: LucideIcons.chevron_right,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    type: AppIconButtonType.ghost,
                    size: AppButtonSize.xl,
                    icon: LucideIcons.menu,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Disabled состояние',
                style: AppFonts.caption.copyWith(color: colors.textSecondary),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    size: AppButtonSize.md,
                    icon: LucideIcons.heart,
                    onPressed: null,
                  ),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    size: AppButtonSize.md,
                    icon: LucideIcons.star,
                    onPressed: null,
                  ),
                  AppIconButton(
                    type: AppIconButtonType.ghost,
                    size: AppButtonSize.md,
                    icon: LucideIcons.bookmark,
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
