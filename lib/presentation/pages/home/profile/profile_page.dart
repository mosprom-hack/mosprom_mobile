import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_colors.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/buttons/app_button_enums.dart';
import '../../../../ui/buttons/app_icon_button.dart';
import '../../../../ui/buttons/app_icon_button_enums.dart';
import '../../../../ui/menu_items/app_menu_item.dart';
import '../../../../ui/text_fields/app_text_field.dart';
import '../../../../ui/text_fields/app_text_field_size.dart';
import '../../../widgets/profile_avatar.dart';
import '../../../widgets/profile_competence_card.dart';
import '../../../widgets/profile_cv_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _telegramController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _telegramController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _telegramController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Профиль',
                      style: AppFonts.h1.copyWith(
                        color: colors.textPrimary,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -1,
                        fontSize: 32,
                        height: 35 / 32,
                      ),
                    ),
                    AppIconButton(
                      type: AppIconButtonType.secondary,
                      variant: AppButtonVariant.filled,
                      size: AppButtonSize.md,
                      icon: LucideIcons.log_out,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 128,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          const ProfileAvatar(size: 128, borderWidth: 1),
                          Positioned(
                            right: 6,
                            bottom: 6,
                            child: AppIconButton(
                              type: AppIconButtonType.primary,
                              variant: AppButtonVariant.filled,
                              size: AppButtonSize.md,
                              icon: LucideIcons.pencil,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 17),
                      ProfileAvatar(
                        size: 128,
                        borderColor: AppColors.purple500,
                        borderWidth: 6,
                        isLocked: true,
                        lockText: 'Коммуникация\n5/10',
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                      ProfileAvatar(
                        size: 128,
                        borderColor: AppColors.red400,
                        borderWidth: 6,
                        isLocked: true,
                        lockText: 'Коммуникация\n5/10',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'ОБЩАЯ ИНФОРМАЦИЯ',
                  style: AppFonts.labelMedium.copyWith(
                    color: colors.textPrimary.withValues(alpha: 0.5),
                    fontSize: 14,
                    height: 16 / 14,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 12),
                AppTextField(
                  controller: _nameController,
                  size: AppTextFieldSize.xl,
                  placeholder: 'Имя',
                ),
                const SizedBox(height: 8),
                AppTextField(
                  controller: _lastNameController,
                  size: AppTextFieldSize.xl,
                  placeholder: 'Фамилия',
                ),
                const SizedBox(height: 8),
                AppTextField(
                  controller: _telegramController,
                  size: AppTextFieldSize.xl,
                  placeholder: 'Telegram',
                ),
                const SizedBox(height: 20),
                Text(
                  'КАРЬЕРА',
                  style: AppFonts.labelMedium.copyWith(
                    color: colors.textPrimary.withValues(alpha: 0.5),
                    fontSize: 14,
                    height: 16 / 14,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ProfileCvCard(onTap: () {}),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 3,
                      child: ProfileCompetenceCard(onTap: () {}),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'ДРУГОЕ',
                  style: AppFonts.labelMedium.copyWith(
                    color: colors.textPrimary.withValues(alpha: 0.5),
                    fontSize: 14,
                    height: 16 / 14,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 12),
                AppMenuItem(
                  text: 'Сообщества',
                  icon: LucideIcons.users,
                  onTap: () {},
                ),
                const SizedBox(height: 8),
                AppMenuItem(
                  text: 'Настройки',
                  icon: LucideIcons.settings,
                  onTap: () {},
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
