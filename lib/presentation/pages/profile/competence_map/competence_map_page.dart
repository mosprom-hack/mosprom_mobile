import 'dart:ui' show ImageFilter;
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/buttons/app_button.dart';
import '../../../../ui/buttons/app_button_enums.dart';
import '../../../widgets/competence_radar_chart.dart';

class CompetenceMapPage extends StatelessWidget {
  const CompetenceMapPage({super.key});

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
                      const SizedBox(height: 40),
                    ],
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
