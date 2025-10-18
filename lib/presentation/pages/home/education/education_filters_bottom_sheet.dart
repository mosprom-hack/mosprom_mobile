import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/checkboxes/app_checkbox.dart';
import '../../../../ui/chipboxes/app_chipbox_group.dart';
import '../../../../ui/dropdowns/app_dropdown.dart';
import '../../../../ui/dropdowns/app_dropdown_controller.dart';
import '../../../../ui/dropdowns/app_dropdown_size.dart';
import '../../../../ui/text_fields/app_text_field.dart';

enum _BottomSheetView { filters, companies }

class EducationFiltersBottomSheet extends StatefulWidget {
  const EducationFiltersBottomSheet({super.key});

  @override
  State<EducationFiltersBottomSheet> createState() =>
      _EducationFiltersBottomSheetState();
}

class _EducationFiltersBottomSheetState
    extends State<EducationFiltersBottomSheet> {
  _BottomSheetView _currentView = _BottomSheetView.filters;
  final DropdownController _specializationController = DropdownController();
  final TextEditingController _searchController = TextEditingController();
  final List<String> _selectedExperience = [];
  final List<String> _selectedCompanies = [];

  final List<String> _specializationItems = [
    'AI в машиностроении',
    'Цифровые двойники',
    'Роботизированная сварка',
    'Генная инженерия',
    'Молекулярная химия',
  ];

  final List<String> _experienceOptions = [
    'Микросхемы общепромышленного применения',
    'RFID-продукция и смарт-карты',
    'Микроконтроллеры',
    'Микросхемы отраслевого применения',
  ];

  final List<String> _allCompanies = [
    'Авангард',
    'Спутникс',
    'ГУП «Мосгортранс»',
    'Микрон',
  ];

  @override
  void initState() {
    super.initState();
    _specializationController.addListener(_onSpecializationChanged);
  }

  @override
  void dispose() {
    _specializationController.removeListener(_onSpecializationChanged);
    _specializationController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onSpecializationChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Container(
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: _currentView == _BottomSheetView.filters
          ? _buildFiltersView(colors)
          : _buildCompaniesView(colors),
    );
  }

  Widget _buildFiltersView(ColorService colors) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        Container(
          width: 36,
          height: 4,
          decoration: BoxDecoration(
            color: colors.grabber,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCompanyButton(),
              const SizedBox(height: 12),
              AppDropdown(
                controller: _specializationController,
                items: _specializationItems,
                placeholder: 'Специализация',
                size: AppDropdownSize.md,
                allowClear: true,
              ),
              if (_specializationController.hasValue) ...[
                const SizedBox(height: 24),
                Text(
                  'Опыт в:',
                  style: AppFonts.bodyMedium.copyWith(
                    color: colors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                AppChipboxGroup(
                  options: _experienceOptions,
                  selectedValues: _selectedExperience,
                  onChanged: (values) {
                    setState(() {
                      _selectedExperience.clear();
                      _selectedExperience.addAll(values);
                    });
                  },
                ),
              ],
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCompaniesView(ColorService colors) {
    final filteredCompanies = _searchController.text.isEmpty
        ? _allCompanies
        : _allCompanies
              .where(
                (company) => company.toLowerCase().contains(
                  _searchController.text.toLowerCase(),
                ),
              )
              .toList();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 8),
          Container(
            width: 36,
            height: 4,
            decoration: BoxDecoration(
              color: colors.grabber,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentView = _BottomSheetView.filters;
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: colors.surfaceElevated,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              LucideIcons.chevron_left,
                              size: 20,
                              color: colors.textPrimary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Компании',
                            textAlign: TextAlign.center,
                            style: AppFonts.h4.copyWith(
                              color: colors.textPrimary,
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppTextField(
                      controller: _searchController,
                      placeholder: 'Найти',
                      leadingIcon: LucideIcons.search,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: filteredCompanies.length,
                      itemBuilder: (context, index) {
                        final company = filteredCompanies[index];
                        final isSelected = _selectedCompanies.contains(company);

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: AppCheckbox(
                            value: isSelected,
                            label: company,
                            onChanged: (value) {
                              setState(() {
                                if (value) {
                                  _selectedCompanies.add(company);
                                } else {
                                  _selectedCompanies.remove(company);
                                }
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyButton() {
    final colors = ColorService.instance;
    final hasSelectedCompanies = _selectedCompanies.isNotEmpty;

    return InkWell(
      onTap: () {
        setState(() {
          _currentView = _BottomSheetView.companies;
        });
      },
      borderRadius: BorderRadius.circular(32),
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          color: colors.surfaceElevated,
          border: Border.all(color: colors.surfaceBorder, width: 1),
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.only(left: 18, right: 6),
        child: Row(
          children: [
            Expanded(
              child: Text(
                hasSelectedCompanies
                    ? _selectedCompanies.join(', ')
                    : 'Компания',
                style: AppFonts.bodyMedium.copyWith(
                  color: hasSelectedCompanies
                      ? colors.buttonSecondaryText
                      : colors.textTertiary,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 52,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Icon(
                  LucideIcons.chevron_down,
                  size: 16,
                  color: colors.buttonSecondaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
