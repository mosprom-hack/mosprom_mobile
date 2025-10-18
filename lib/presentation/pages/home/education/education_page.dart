import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/router/app_routes.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/buttons/app_button.dart';
import '../../../../ui/buttons/app_button_enums.dart';
import '../../../../ui/buttons/app_icon_button.dart';
import '../../../../ui/buttons/app_icon_button_enums.dart';
import '../../../../ui/cards/user_card.dart';
import '../../../../ui/cards/user_card_enums.dart';
import '../../../../ui/tabs/app_tab.dart';
import 'blocs/education_bloc.dart';
import 'blocs/education_event.dart';
import 'blocs/education_state.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<EducationBloc>()..add(const LoadMentorsEvent()),
      child: const _EducationPageContent(),
    );
  }
}

class _EducationPageContent extends StatelessWidget {
  const _EducationPageContent();

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  AppIconButton(
                    type: AppIconButtonType.primary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.md,
                    icon: LucideIcons.settings_2,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            const _TabsSection(),
            const SizedBox(height: 32),
            const Expanded(child: _ContentSection()),
          ],
        ),
      ),
    );
  }
}

class _TabsSection extends StatelessWidget {
  const _TabsSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              AppTab(
                text: 'Менторы',
                isActive: state.currentTabIndex == 0,
                onTap: () {
                  context.read<EducationBloc>().add(const ChangeTabEvent(0));
                },
              ),
              const SizedBox(width: 8),
              AppTab(
                text: 'Вебинары',
                isActive: state.currentTabIndex == 1,
                onTap: () {
                  context.read<EducationBloc>().add(const ChangeTabEvent(1));
                },
              ),
              const SizedBox(width: 8),
              AppTab(
                text: 'Воркшопы',
                isActive: state.currentTabIndex == 2,
                onTap: () {
                  context.read<EducationBloc>().add(const ChangeTabEvent(2));
                },
              ),
              const SizedBox(width: 8),
              AppTab(
                text: 'Лекции',
                isActive: state.currentTabIndex == 3,
                onTap: () {
                  context.read<EducationBloc>().add(const ChangeTabEvent(3));
                },
              ),
              const SizedBox(width: 8),
              AppTab(
                text: 'Трансляции',
                isActive: state.currentTabIndex == 4,
                onTap: () {
                  context.read<EducationBloc>().add(const ChangeTabEvent(4));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ContentSection extends StatelessWidget {
  const _ContentSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state.currentTabIndex == 0) {
          return const _MentorsTab();
        } else {
          return _PlaceholderTab(
            tabName: _getTabName(state.currentTabIndex),
          );
        }
      },
    );
  }

  String _getTabName(int index) {
    switch (index) {
      case 1:
        return 'Вебинары';
      case 2:
        return 'Воркшопы';
      case 3:
        return 'Лекции';
      case 4:
        return 'Трансляции';
      default:
        return '';
    }
  }
}

class _MentorsTab extends StatelessWidget {
  const _MentorsTab();

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        if (state is EducationError) {
          return Center(
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
                const SizedBox(height: 16),
                AppButton(
                  type: AppButtonType.primary,
                  variant: AppButtonVariant.outline,
                  size: AppButtonSize.md,
                  text: 'Попробовать снова',
                  onPressed: () {
                    context.read<EducationBloc>().add(const LoadMentorsEvent());
                  },
                ),
              ],
            ),
          );
        }

        if (state is EducationLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'МЕНТОРЫ',
                  style: AppFonts.labelLarge.copyWith(
                    color: colors.textSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 150,
                  ),
                  itemCount: state.mentors.length,
                  itemBuilder: (context, index) {
                    final mentor = state.mentors[index];
                    return UserCard(
                      title: mentor.fullName,
                      avatarUrl: mentor.avatarUrl,
                      size: UserCardSize.compact,
                      onTap: () {
                        context.push(AppRoutes.mentorDetailPath(mentor.id));
                      },
                    );
                  },
                ),
              ),
            ],
          );
        }

        return const Center(
          child: CupertinoActivityIndicator(),
        );
      },
    );
  }
}

class _PlaceholderTab extends StatelessWidget {
  final String tabName;

  const _PlaceholderTab({required this.tabName});

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            LucideIcons.sparkles,
            size: 64,
            color: colors.textSecondary,
          ),
          const SizedBox(height: 24),
          Text(
            'Скоро здесь появится контент',
            textAlign: TextAlign.center,
            style: AppFonts.h5.copyWith(
              color: colors.textSecondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            tabName,
            textAlign: TextAlign.center,
            style: AppFonts.bodyMedium.copyWith(
              color: colors.textTertiary,
            ),
          ),
        ],
      ),
    );
  }
}
