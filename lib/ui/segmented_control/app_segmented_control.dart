import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class AppSegmentedControl extends StatefulWidget {
  final List<String> segments;
  final int initialIndex;
  final ValueChanged<int>? onSegmentChanged;

  const AppSegmentedControl({
    super.key,
    required this.segments,
    this.initialIndex = 0,
    this.onSegmentChanged,
  }) : assert(segments.length > 0, 'Segments list cannot be empty');

  @override
  State<AppSegmentedControl> createState() => _AppSegmentedControlState();
}

class _AppSegmentedControlState extends State<AppSegmentedControl> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onSegmentTap(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
      widget.onSegmentChanged?.call(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colors.segmentedControlBackground,
        border: Border.all(color: colors.segmentedControlBorder, width: 0.5),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: List.generate(
          widget.segments.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () => _onSegmentTap(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? colors.segmentedControlActiveBackground
                      : colors.transparent,
                  border: _selectedIndex == index
                      ? Border.all(
                          color: colors.segmentedControlActiveBorder,
                          width: 0.5,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    widget.segments[index],
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppFonts.labelMedium.copyWith(
                      color: colors.segmentedControlText,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
