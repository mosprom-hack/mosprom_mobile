import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/widgets/custom_bottom_navbar.dart';

class ScaffoldWithNavbar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavbar({
    super.key,
    required this.navigationShell,
  });

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SafeArea(
        child: CustomBottomNavbar(
          currentIndex: navigationShell.currentIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
