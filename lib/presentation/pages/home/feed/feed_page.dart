import 'package:flutter/material.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: Center(
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
          ],
        ),
      ),
    );
  }
}
