import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../app/router/app_routes.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class ProfileCompetenceCard extends StatelessWidget {
  const ProfileCompetenceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: colors.textFieldBackground,
        border: Border.all(color: colors.surfaceBorder, width: 1),
        borderRadius: BorderRadius.circular(32),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Stack(
          children: [
            Positioned(
              width: 220,
              height: 220,
              right: -80,
              top: -20,
              child: Transform.rotate(
                angle: 0.17,
                child: Image.asset(
                  'assets/images/competence_chart.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.push(AppRoutes.competenceMap),
                borderRadius: BorderRadius.circular(32),
                splashColor: colors.buttonSecondaryText.withValues(alpha: 0.1),
                highlightColor: colors.buttonSecondaryText.withValues(
                  alpha: 0.05,
                ),
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.all(24),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Карта\nкомпетенций',
                    style: AppFonts.bodyMedium.copyWith(
                      color: colors.textPrimary,
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
