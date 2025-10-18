import 'package:flutter/material.dart';
import 'app_chipbox.dart';

class AppChipboxGroup extends StatelessWidget {
  final List<String> options;
  final List<String> selectedValues;
  final ValueChanged<List<String>>? onChanged;

  const AppChipboxGroup({
    super.key,
    required this.options,
    required this.selectedValues,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: options.map((option) {
        final isSelected = selectedValues.contains(option);
        return AppChipbox(
          label: option,
          value: isSelected,
          onChanged: onChanged == null
              ? null
              : (selected) {
                  final newValues = List<String>.from(selectedValues);
                  if (selected) {
                    newValues.add(option);
                  } else {
                    newValues.remove(option);
                  }
                  onChanged!(newValues);
                },
        );
      }).toList(),
    );
  }
}
