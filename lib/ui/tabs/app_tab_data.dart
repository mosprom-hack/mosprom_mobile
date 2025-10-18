import 'package:flutter/material.dart';

class AppTabData {
  final String label;
  final IconData? icon;
  final Color? activeColor;
  final Widget content;

  const AppTabData({
    required this.label,
    this.icon,
    this.activeColor,
    required this.content,
  });
}
