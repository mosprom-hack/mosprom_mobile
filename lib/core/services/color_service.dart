import 'package:flutter/material.dart';
import '../consts/app_colors.dart';

class ColorService {
  ColorService._();
  static final ColorService instance = ColorService._();

  Color get background => AppColors.background;

  Color get textPrimary => AppColors.white;
  Color get textSecondary => AppColors.whiteAlpha40;
  Color get textTertiary => AppColors.whiteAlpha20;

  Color get primary => AppColors.purple500;
  Color get primaryLight => AppColors.purple400;
  Color get primaryDark => AppColors.purple600;

  Color get secondary => AppColors.neon500;
  Color get secondaryLight => AppColors.neon400;
  Color get secondaryDark => AppColors.neon600;

  Color get error => AppColors.red500;
  Color get errorLight => AppColors.red400;
  Color get errorDark => AppColors.red600;

  Color get surfaceElevated => AppColors.whiteAlpha05;
  Color get surfaceBorder => AppColors.whiteAlpha01;

  Color get navbarBackground => AppColors.whiteAlpha02;
  Color get navbarBorder => AppColors.whiteAlpha01;
  Color get navbarItemActiveBackground => AppColors.whiteAlpha05;
  Color get navbarItemActiveText => AppColors.white;
  Color get navbarItemInactiveText => AppColors.whiteAlpha40;

  Color get buttonSecondaryText => AppColors.whiteAlpha80;
  Color get buttonSecondaryBackground => AppColors.whiteAlpha02;
  Color get buttonSecondaryBorder => AppColors.whiteAlpha30;
  Color get buttonDisabledText => AppColors.whiteAlpha10;
  Color get buttonDisabledBackground => AppColors.whiteAlpha05;

  Color get tabInactiveText => AppColors.whiteAlpha50;
  Color get tabActiveBackground => AppColors.whiteAlpha05;
  Color get tabActiveText => AppColors.white;
  Color get tabContainerBackground => AppColors.whiteAlpha02;
  Color get tabFilledActiveBackground => AppColors.purple500;

  Color get dropdownMenuBackground => const Color(0xFF1A1A1A);

  Color get checkboxBorder => AppColors.whiteAlpha20;
  Color get checkboxLabelText => AppColors.whiteAlpha60;
  Color get checkboxSelectedBackground => AppColors.purple500;

  Color get textFieldBackground => AppColors.whiteAlpha02;
  Color get textFieldBorder => AppColors.whiteAlpha01;
  Color get textFieldText => AppColors.whiteAlpha80;
  Color get textFieldPlaceholder => AppColors.whiteAlpha20;
  Color get textFieldError => AppColors.red400;
  Color get textFieldErrorText => AppColors.red400;

  Color get grabber => AppColors.whiteAlpha60;

  Color get transparent => AppColors.transparent;
}
