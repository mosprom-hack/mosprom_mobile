import 'package:flutter/material.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../../../../ui/tabs/app_tab_data.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: AppTabs(
          tabs: [
            AppTabData(
              label: 'Менторы',
              content: _buildPlaceholder('Менторы', colors),
            ),
            AppTabData(
              label: 'Вебинары',
              content: _buildPlaceholder('Вебинары', colors),
            ),
            AppTabData(
              label: 'Воркшопы',
              content: _buildPlaceholder('Воркшопы', colors),
            ),
            AppTabData(
              label: 'Лекции',
              content: _buildPlaceholder('Лекции', colors),
            ),
            AppTabData(
              label: 'Трансляции',
              content: _buildPlaceholder('Трансляции', colors),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder(String title, ColorService colors) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox_rounded,
            size: 64,
            color: colors.textSecondary,
          ),
          const SizedBox(height: 24),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppFonts.h4.copyWith(
              color: colors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Контент пока пуст',
            textAlign: TextAlign.center,
            style: AppFonts.bodyMedium.copyWith(
              color: colors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
