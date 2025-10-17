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

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    ColorService.instance.updateFromBrightness(brightness);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    ColorService.instance.updateFromBrightness(brightness);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'моспром',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.system,
    );
  }

  ThemeData _buildLightTheme() {
    final colorScheme = ColorService.instance.getColorScheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: AppFonts.primaryFont,
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: AppFonts.h5.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: AppFonts.h1,
        displayMedium: AppFonts.h2,
        displaySmall: AppFonts.h3,
        headlineLarge: AppFonts.h4,
        headlineMedium: AppFonts.h5,
        headlineSmall: AppFonts.h6,
        bodyLarge: AppFonts.bodyLarge,
        bodyMedium: AppFonts.bodyMedium,
        bodySmall: AppFonts.bodySmall,
        labelLarge: AppFonts.labelLarge,
        labelMedium: AppFonts.labelMedium,
        labelSmall: AppFonts.labelSmall,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppFonts.buttonMedium,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    ColorService.instance.setThemeMode(true);
    final colorScheme = ColorService.instance.getColorScheme();
    ColorService.instance.setThemeMode(false);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: AppFonts.primaryFont,
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: AppFonts.h5.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: AppFonts.h1,
        displayMedium: AppFonts.h2,
        displaySmall: AppFonts.h3,
        headlineLarge: AppFonts.h4,
        headlineMedium: AppFonts.h5,
        headlineSmall: AppFonts.h6,
        bodyLarge: AppFonts.bodyLarge,
        bodyMedium: AppFonts.bodyMedium,
        bodySmall: AppFonts.bodySmall,
        labelLarge: AppFonts.labelLarge,
        labelMedium: AppFonts.labelMedium,
        labelSmall: AppFonts.labelSmall,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppFonts.buttonMedium,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
