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
      primary: colors.purple500,
      secondary: colors.neon500,
      error: colors.red500,
      surface: colors.background,
      onPrimary: colors.text,
      onSecondary: colors.background,
      onError: colors.text,
      onSurface: colors.text,
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
        foregroundColor: colors.text,
        titleTextStyle: AppFonts.h5.copyWith(color: colors.text),
      ),
      textTheme: TextTheme(
        displayLarge: AppFonts.h1.copyWith(color: colors.text),
        displayMedium: AppFonts.h2.copyWith(color: colors.text),
        displaySmall: AppFonts.h3.copyWith(color: colors.text),
        headlineLarge: AppFonts.h4.copyWith(color: colors.text),
        headlineMedium: AppFonts.h5.copyWith(color: colors.text),
        headlineSmall: AppFonts.h6.copyWith(color: colors.text),
        bodyLarge: AppFonts.bodyLarge.copyWith(color: colors.text),
        bodyMedium: AppFonts.bodyMedium.copyWith(color: colors.text),
        bodySmall: AppFonts.bodySmall.copyWith(color: colors.text),
        labelLarge: AppFonts.labelLarge.copyWith(color: colors.text),
        labelMedium: AppFonts.labelMedium.copyWith(color: colors.text),
        labelSmall: AppFonts.labelSmall.copyWith(color: colors.text),
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
