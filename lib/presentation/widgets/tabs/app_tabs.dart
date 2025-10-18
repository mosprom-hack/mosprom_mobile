import 'package:flutter/material.dart';
import '../../../ui/tabs/app_tab.dart';
import '../../../ui/tabs/app_tab_data.dart';

class AppTabs extends StatefulWidget {
  final List<AppTabData> tabs;
  final int initialIndex;
  final void Function(int)? onTabChanged;

  const AppTabs({
    super.key,
    required this.tabs,
    this.initialIndex = 0,
    this.onTabChanged,
  });

  @override
  State<AppTabs> createState() => _AppTabsState();
}

class _AppTabsState extends State<AppTabs> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  void _onTabTap(int index) {
    if (_currentIndex == index) return;

    setState(() {
      _currentIndex = index;
    });

    widget.onTabChanged?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: List.generate(
              widget.tabs.length,
              (index) {
                final tab = widget.tabs[index];
                return Padding(
                  padding: EdgeInsets.only(
                    right: index < widget.tabs.length - 1 ? 8 : 0,
                  ),
                  child: AppTab(
                    text: tab.label,
                    icon: tab.icon,
                    isActive: _currentIndex == index,
                    activeColor: tab.activeColor,
                    onTap: () => _onTabTap(index),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: _currentIndex,
            children: widget.tabs.map((tab) => tab.content).toList(),
          ),
        ),
      ],
    );
  }
}
