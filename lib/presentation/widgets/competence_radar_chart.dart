import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompetenceRadarChart extends StatefulWidget {
  const CompetenceRadarChart({super.key});

  @override
  State<CompetenceRadarChart> createState() => _CompetenceRadarChartState();
}

class _CompetenceRadarChartState extends State<CompetenceRadarChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: SizedBox(
        width: 225,
        height: 225,
        child: SvgPicture.asset(
          'assets/images/competence_diagram.svg',
          width: 225,
          height: 225,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
