import 'dart:ui' show ImageFilter;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';
import 'package:mikron_mobile/ui/text_fields/app_text_field_size.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../../../core/consts/app_fonts.dart';
import '../../../../../core/di/injection_container.dart';
import '../../../../../core/services/color_service.dart';
import '../../../../../ui/buttons/app_button.dart';
import '../../../../../ui/buttons/app_button_enums.dart';
import '../../../../../ui/buttons/app_icon_button.dart';
import '../../../../../ui/buttons/app_icon_button_enums.dart';
import '../../../../../ui/dropdowns/app_dropdown.dart';
import '../../../../../ui/dropdowns/app_dropdown_controller.dart';
import '../../../../../ui/dropdowns/app_dropdown_size.dart';
import '../../../../../ui/segmented_control/app_segmented_control.dart';
import '../../../../../ui/text_fields/app_text_field.dart';
import '../../../../widgets/competence_radar_chart.dart';
import '../../../../widgets/event_card.dart';
import 'blocs/competence_map_bloc.dart';
import 'blocs/competence_map_event.dart';
import 'blocs/competence_map_state.dart';

class CompetenceMapPage extends StatelessWidget {
  const CompetenceMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CompetenceMapBloc>()
        ..add(const LoadEventsEvent(type: 'Онлайн')),
      child: const _CompetenceMapPageContent(),
    );
  }
}

class _CompetenceMapPageContent extends StatefulWidget {
  const _CompetenceMapPageContent();

  @override
  State<_CompetenceMapPageContent> createState() => _CompetenceMapPageContentState();
}

class _CompetenceMapPageContentState extends State<_CompetenceMapPageContent> {
  int _selectedSegment = 0;
  final TextEditingController _searchController = TextEditingController();
  final DropdownController _cityController = DropdownController();
  final List<String> _cities = [
    'Москва',
    'Санкт-Петербург',
    'Казань',
    'Новосибирск',
  ];

  @override
  void initState() {
    super.initState();
    _cityController.setValue(_cities[0]);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: colors.background,
      body: SlidingUpPanel(
        minHeight: 160,
        maxHeight: screenHeight - safeAreaTop - 170,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: colors.background,
        panel: _buildPanel(colors),
        body: _buildBody(colors),
      ),
    );
  }

  Widget _buildBody(ColorService colors) {
    return SafeArea(
      child: Column(
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
                      'Карта компетенций',
                      style: AppFonts.bodyMedium.copyWith(
                        color: colors.textPrimary,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.408,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          Center(child: CompetenceRadarChart()),
                          Positioned(
                            left: 20,
                            top: 7,
                            child: SizedBox(
                              child: Text(
                                'Решение\nпроф. задач',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            top: 7,
                            child: SizedBox(
                              child: Text(
                                'Коммуникация',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 141,
                            child: SizedBox(
                              child: Text(
                                'Организатор-\nские навыки',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            bottom: 20,
                            child: SizedBox(
                              child: Text(
                                'Техническое\nмышление',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            bottom: 20,
                            child: SizedBox(
                              child: Text(
                                'Логическое\nмышление',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 141,
                            child: SizedBox(
                              child: Text(
                                'Программи-\nрование',
                                style: AppFonts.bodySmall.copyWith(
                                  color: colors.textPrimary.withValues(
                                    alpha: 0.6,
                                  ),
                                  height: 18 / 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        type: AppButtonType.primary,
                        variant: AppButtonVariant.filled,
                        size: AppButtonSize.md,
                        text: 'Построить план обучения',
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 200),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPanel(ColorService colors) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Container(
          width: 36,
          height: 4,
          decoration: BoxDecoration(
            color: colors.grabber,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Лента прокачки навыков',
                style: AppFonts.bodyMedium.copyWith(
                  color: colors.textPrimary.withValues(alpha: 0.9),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Офлайн и онлайн мероприятия для проф. роста',
                style: AppFonts.bodyMedium.copyWith(
                  color: colors.textPrimary.withValues(alpha: 0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 20 / 14,
                ),
              ),
              const SizedBox(height: 16),
              AppSegmentedControl(
                segments: const ['Онлайн', 'Офлайн'],
                initialIndex: _selectedSegment,
                onSegmentChanged: (index) {
                  setState(() {
                    _selectedSegment = index;
                  });
                  final type = index == 0 ? 'Онлайн' : 'Оффлайн';
                  context.read<CompetenceMapBloc>().add(
                        ChangeEventTypeEvent(type: type),
                      );
                },
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      size: AppTextFieldSize.sm,
                      controller: _searchController,
                      placeholder: 'Поиск',
                      leadingIcon: LucideIcons.search,
                      onChanged: (value) {
                        context.read<CompetenceMapBloc>().add(
                              SearchEventsEvent(query: value),
                            );
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  AppIconButton(
                    type: AppIconButtonType.secondary,
                    variant: AppButtonVariant.filled,
                    size: AppButtonSize.md,
                    icon: LucideIcons.list_filter,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  Opacity(
                    opacity: 0.5,
                    child: IgnorePointer(
                      child: SizedBox(
                        width: 120,
                        child: AppDropdown(
                          controller: _cityController,
                          items: _cities,
                          placeholder: 'Город',
                          size: AppDropdownSize.sm,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
        Expanded(
          child: BlocBuilder<CompetenceMapBloc, CompetenceMapState>(
            builder: (context, state) {
              if (state is CompetenceMapLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }

              if (state is CompetenceMapError) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      state.message,
                      style: AppFonts.bodyMedium.copyWith(
                        color: colors.textPrimary.withValues(alpha: 0.6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }

              if (state is CompetenceMapLoaded) {
                final events = state.filteredEvents;

                if (events.isEmpty) {
                  return Center(
                    child: Text(
                      state.searchQuery.isNotEmpty
                          ? 'Ничего не найдено'
                          : 'Нет мероприятий',
                      style: AppFonts.bodyMedium.copyWith(
                        color: colors.textPrimary.withValues(alpha: 0.6),
                      ),
                    ),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.68,
                    ),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return EventCard(
                        title: event.title,
                        category: event.topic,
                        eventType: event.type,
                        imageUrl: event.imageUrl,
                      );
                    },
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}
