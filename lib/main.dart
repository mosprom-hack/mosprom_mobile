import 'package:flutter/material.dart';
import 'package:mikron_mobile/app/router/app_router.dart';
import 'package:mikron_mobile/core/consts/app_fonts.dart';
import 'package:mikron_mobile/core/di/injection_container.dart' as di;
import 'package:mikron_mobile/core/services/color_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'моспром',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: _buildDarkTheme(),
      themeMode: ThemeMode.dark,
    );
  }

  ThemeData _buildDarkTheme() {
    final colors = ColorService.instance;

    final colorScheme = ColorScheme.dark(
      primary: colors.primary,
      secondary: colors.secondary,
      error: colors.error,
      surface: colors.background,
      onPrimary: colors.textPrimary,
      onSecondary: colors.background,
      onError: colors.textPrimary,
      onSurface: colors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: AppFonts.sfpro,
      scaffoldBackgroundColor: colors.background,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: colors.background,
        foregroundColor: colors.textPrimary,
        titleTextStyle: AppFonts.h5.copyWith(color: colors.textPrimary),
      ),
      textTheme: TextTheme(
        displayLarge: AppFonts.h1.copyWith(color: colors.textPrimary),
        displayMedium: AppFonts.h2.copyWith(color: colors.textPrimary),
        displaySmall: AppFonts.h3.copyWith(color: colors.textPrimary),
        headlineLarge: AppFonts.h4.copyWith(color: colors.textPrimary),
        headlineMedium: AppFonts.h5.copyWith(color: colors.textPrimary),
        headlineSmall: AppFonts.h6.copyWith(color: colors.textPrimary),
        bodyLarge: AppFonts.bodyLarge.copyWith(color: colors.textPrimary),
        bodyMedium: AppFonts.bodyMedium.copyWith(color: colors.textPrimary),
        bodySmall: AppFonts.bodySmall.copyWith(color: colors.textPrimary),
        labelLarge: AppFonts.labelLarge.copyWith(color: colors.textPrimary),
        labelMedium: AppFonts.labelMedium.copyWith(color: colors.textPrimary),
        labelSmall: AppFonts.labelSmall.copyWith(color: colors.textPrimary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppFonts.buttonMedium,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }
}
