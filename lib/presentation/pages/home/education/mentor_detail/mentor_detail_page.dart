import 'dart:ui' show ImageFilter;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/consts/app_fonts.dart';
import '../../../../../core/di/injection_container.dart';
import '../../../../../core/services/color_service.dart';
import '../../../../../ui/buttons/app_button.dart';
import '../../../../../ui/buttons/app_button_enums.dart';
import '../../../../../ui/tabs/app_tab.dart';
import '../../../../../ui/tabs/app_tabs_variant.dart';
import 'blocs/mentor_detail_bloc.dart';
import 'blocs/mentor_detail_event.dart';
import 'blocs/mentor_detail_state.dart';

class MentorDetailPage extends StatelessWidget {
  final String mentorId;

  const MentorDetailPage({
    super.key,
    required this.mentorId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<MentorDetailBloc>()..add(LoadMentorDetailEvent(mentorId)),
      child: const _MentorDetailPageContent(),
    );
  }
}

class _MentorDetailPageContent extends StatelessWidget {
  const _MentorDetailPageContent();

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: BlocBuilder<MentorDetailBloc, MentorDetailState>(
          builder: (context, state) {
            if (state is MentorDetailLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }

            if (state is MentorDetailError) {
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
                      style: AppFonts.h5.copyWith(color: colors.textSecondary),
                    ),
                    const SizedBox(height: 16),
                    AppButton(
                      type: AppButtonType.primary,
                      variant: AppButtonVariant.outline,
                      size: AppButtonSize.md,
                      text: 'Назад',
                      onPressed: () => context.pop(),
                    ),
                  ],
                ),
              );
            }

            if (state is MentorDetailLoaded) {
              final mentor = state.mentor;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: Container(
                              width: 40,
                              height: 36,
                              decoration: BoxDecoration(
                                color: colors.buttonSecondaryBackground,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => context.pop(),
                                  borderRadius: BorderRadius.circular(32),
                                  child: Center(
                                    child: Icon(
                                      LucideIcons.chevron_left,
                                      size: 16,
                                      color: colors.buttonSecondaryText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Все менторы',
                              style: AppFonts.bodyMedium.copyWith(
                                color: colors.textPrimary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (mentor.avatarUrl != null &&
                              mentor.avatarUrl!.isNotEmpty)
                            Center(
                              child: Container(
                                width: 128,
                                height: 128,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: colors.surfaceBorder,
                                    width: 1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.network(
                                    mentor.avatarUrl!,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: colors.surfaceElevated,
                                        child: Icon(
                                          LucideIcons.user_round,
                                          size: 48,
                                          color: colors.tabInactiveText,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (mentor.avatarUrl != null &&
                              mentor.avatarUrl!.isNotEmpty)
                            const SizedBox(height: 8),
                          Text(
                            mentor.fullName,
                            style: AppFonts.h3.copyWith(
                              color: colors.textPrimary,
                            ),
                          ),
                          if (mentor.specialization != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              mentor.specialization!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppFonts.bodyMedium.copyWith(
                                color: colors.tabInactiveText,
                                height: 20 / 14,
                              ),
                            ),
                          ],
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: colors.tabContainerBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppTab(
                                    text: 'Обо мне',
                                    isActive: state.currentTabIndex == 0,
                                    variant: AppTabsVariant.filled,
                                    onTap: () {
                                      context
                                          .read<MentorDetailBloc>()
                                          .add(const ChangeTabEvent(0));
                                    },
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: AppTab(
                                    text: 'С чем помогу',
                                    isActive: state.currentTabIndex == 1,
                                    variant: AppTabsVariant.filled,
                                    onTap: () {
                                      context
                                          .read<MentorDetailBloc>()
                                          .add(const ChangeTabEvent(1));
                                    },
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: AppTab(
                                    text: 'Опыт',
                                    isActive: state.currentTabIndex == 2,
                                    variant: AppTabsVariant.filled,
                                    onTap: () {
                                      context
                                          .read<MentorDetailBloc>()
                                          .add(const ChangeTabEvent(2));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildTabContent(state.currentTabIndex, mentor, colors),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildTabContent(
      int tabIndex, dynamic mentor, ColorService colors) {
    String? content;

    switch (tabIndex) {
      case 0:
        content = mentor.aboutMe;
        break;
      case 1:
        content = mentor.helpWith;
        break;
      case 2:
        content = mentor.experience;
        break;
    }

    if (content == null || content.isEmpty) {
      return Text(
        'Информация отсутствует',
        style: AppFonts.bodyMedium.copyWith(
          color: colors.textSecondary,
        ),
      );
    }

    return Text(
      content,
      style: AppFonts.bodyMedium.copyWith(
        color: colors.textPrimary,
        height: 20 / 14,
      ),
    );
  }
}
