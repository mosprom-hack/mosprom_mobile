import 'package:flutter/material.dart';
import '../consts/app_colors.dart';

class ColorService {
  ColorService._();
  static final ColorService instance = ColorService._();

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void setThemeMode(bool isDark) {
    _isDarkMode = isDark;
  }

  void updateFromBrightness(Brightness brightness) {
    _isDarkMode = brightness == Brightness.dark;
  }
  Color get primary => _isDarkMode ? AppColors.darkPrimary : AppColors.lightPrimary;
  Color get primaryVariant => _isDarkMode ? AppColors.darkPrimaryVariant : AppColors.lightPrimaryVariant;
  Color get secondary => _isDarkMode ? AppColors.darkSecondary : AppColors.lightSecondary;
  Color get secondaryVariant => _isDarkMode ? AppColors.darkSecondaryVariant : AppColors.lightSecondaryVariant;

  Color get background => _isDarkMode ? AppColors.darkBackground : AppColors.lightBackground;
  Color get surface => _isDarkMode ? AppColors.darkSurface : AppColors.lightSurface;
  Color get error => _isDarkMode ? AppColors.darkError : AppColors.lightError;

  Color get onPrimary => _isDarkMode ? AppColors.darkOnPrimary : AppColors.lightOnPrimary;
  Color get onSecondary => _isDarkMode ? AppColors.darkOnSecondary : AppColors.lightOnSecondary;
  Color get onBackground => _isDarkMode ? AppColors.darkOnBackground : AppColors.lightOnBackground;
  Color get onSurface => _isDarkMode ? AppColors.darkOnSurface : AppColors.lightOnSurface;
  Color get onError => _isDarkMode ? AppColors.darkOnError : AppColors.lightOnError;

  Color get textPrimary => _isDarkMode ? AppColors.darkTextPrimary : AppColors.lightTextPrimary;
  Color get textSecondary => _isDarkMode ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;
  Color get textHint => _isDarkMode ? AppColors.darkTextHint : AppColors.lightTextHint;

  Color get divider => _isDarkMode ? AppColors.darkDivider : AppColors.lightDivider;

  Color get success => AppColors.success;
  Color get warning => AppColors.warning;
  Color get info => AppColors.info;

  Color get transparent => AppColors.transparent;

  ColorScheme getColorScheme() {
    return _isDarkMode ? _darkColorScheme : _lightColorScheme;
  }

  static final ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColors.lightPrimary,
    secondary: AppColors.lightSecondary,
    surface: AppColors.lightSurface,
    error: AppColors.lightError,
    onPrimary: AppColors.lightOnPrimary,
    onSecondary: AppColors.lightOnSecondary,
    onSurface: AppColors.lightOnSurface,
    onError: AppColors.lightOnError,
  );

  static final ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkSecondary,
    surface: AppColors.darkSurface,
    error: AppColors.darkError,
    onPrimary: AppColors.darkOnPrimary,
    onSecondary: AppColors.darkOnSecondary,
    onSurface: AppColors.darkOnSurface,
    onError: AppColors.darkOnError,
  );
}
