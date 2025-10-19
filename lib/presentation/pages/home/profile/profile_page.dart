import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_colors.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/di/injection_container.dart';
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
import 'blocs/profile_bloc.dart';
import 'blocs/profile_event.dart';
import 'blocs/profile_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileBloc>()..add(const LoadUserEvent()),
      child: const _ProfilePageContent(),
    );
  }
}

class _ProfilePageContent extends StatefulWidget {
  const _ProfilePageContent();

  @override
  State<_ProfilePageContent> createState() => _ProfilePageContentState();
}

class _ProfilePageContentState extends State<_ProfilePageContent> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _telegramController;
  late FocusNode _nameFocusNode;
  late FocusNode _lastNameFocusNode;
  late FocusNode _telegramFocusNode;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _telegramController = TextEditingController();
    _nameFocusNode = FocusNode();
    _lastNameFocusNode = FocusNode();
    _telegramFocusNode = FocusNode();

    _nameFocusNode.addListener(_onFocusChange);
    _lastNameFocusNode.addListener(_onFocusChange);
    _telegramFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _telegramController.dispose();
    _nameFocusNode.removeListener(_onFocusChange);
    _lastNameFocusNode.removeListener(_onFocusChange);
    _telegramFocusNode.removeListener(_onFocusChange);
    _nameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _telegramFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    final bloc = context.read<ProfileBloc>();
    final hasAnyFocus = _nameFocusNode.hasFocus ||
        _lastNameFocusNode.hasFocus ||
        _telegramFocusNode.hasFocus;

    if (hasAnyFocus && !bloc.state.isEditMode) {
      bloc.add(const EnableEditModeEvent());
    } else if (!hasAnyFocus && bloc.state.isEditMode) {
      bloc.add(const DisableEditModeEvent());
    }
  }

  void _saveChanges() {
    context.read<ProfileBloc>().add(UpdateUserEvent(
          firstName: _nameController.text,
          lastName: _lastNameController.text,
          telegram: _telegramController.text,
        ));
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileLoaded) {
          _nameController.text = state.user.firstName;
          _lastNameController.text = state.user.lastName;
          _telegramController.text = state.user.telegram;
        }
      },
      builder: (context, state) {
        if (state is ProfileLoading) {
          return Scaffold(
            backgroundColor: colors.background,
            body: const Center(
              child: CupertinoActivityIndicator(),
            ),
          );
        }

        if (state is ProfileError) {
          return Scaffold(
            backgroundColor: colors.background,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.circle_alert,
                    size: 64,
                    color: colors.error,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: AppFonts.h5.copyWith(
                      color: colors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

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
                        if (state.isEditMode)
                          AppIconButton(
                            type: AppIconButtonType.primary,
                            variant: AppButtonVariant.filled,
                            size: AppButtonSize.md,
                            icon: LucideIcons.check,
                            onPressed: state is ProfileSaving ? null : _saveChanges,
                          )
                        else
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
                      focusNode: _nameFocusNode,
                      size: AppTextFieldSize.xl,
                      placeholder: 'Имя',
                    ),
                    const SizedBox(height: 8),
                    AppTextField(
                      controller: _lastNameController,
                      focusNode: _lastNameFocusNode,
                      size: AppTextFieldSize.xl,
                      placeholder: 'Фамилия',
                    ),
                    const SizedBox(height: 8),
                    AppTextField(
                      controller: _telegramController,
                      focusNode: _telegramFocusNode,
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
                    const Expanded(
                      flex: 3,
                      child: ProfileCompetenceCard(),
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
      },
    );
  }
}
