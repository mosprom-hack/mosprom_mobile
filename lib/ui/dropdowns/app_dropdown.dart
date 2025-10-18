import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import 'app_dropdown_controller.dart';
import 'app_dropdown_size.dart';

class AppDropdown extends StatefulWidget {
  final DropdownController controller;
  final List<String> items;
  final String placeholder;
  final AppDropdownSize size;
  final bool enabled;
  final IconData? leadingIcon;
  final bool allowClear;

  const AppDropdown({
    super.key,
    required this.controller,
    required this.items,
    this.placeholder = 'Выберите свойство',
    this.size = AppDropdownSize.md,
    this.enabled = true,
    this.leadingIcon,
    this.allowClear = false,
  });

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown>
    with SingleTickerProviderStateMixin {
  final OverlayPortalController _overlayController = OverlayPortalController();
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _triggerKey = GlobalKey();
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  double _triggerWidth = 0;
  bool _openUpward = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 0.5).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    widget.controller.addListener(_onControllerChanged);
  }

  @override
  void didUpdateWidget(AppDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onControllerChanged);
      widget.controller.addListener(_onControllerChanged);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChanged);
    _animationController.dispose();
    super.dispose();
  }

  void _onControllerChanged() {
    setState(() {});
  }

  void _toggleDropdown() {
    if (!widget.enabled) return;

    if (_overlayController.isShowing) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    final RenderBox? renderBox =
        _triggerKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      final screenHeight = MediaQuery.of(context).size.height;
      final triggerHeight = renderBox.size.height;
      final spaceBelow = screenHeight - position.dy - triggerHeight;
      final estimatedMenuHeight =
          (widget.items.length * _getMenuItemHeight()) + 16;

      setState(() {
        _triggerWidth = renderBox.size.width;
        _openUpward = spaceBelow < estimatedMenuHeight && position.dy > spaceBelow;
      });
    }
    _overlayController.show();
    _animationController.forward();
  }

  void _closeDropdown() {
    _overlayController.hide();
    _animationController.reverse();
  }

  void _selectItem(String item) {
    widget.controller.setValue(item);
    _closeDropdown();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CompositedTransformTarget(
          link: _layerLink,
          child: OverlayPortal(
            controller: _overlayController,
            overlayChildBuilder: _buildOverlay,
            child: _buildTrigger(colors),
          ),
        ),
        if (widget.controller.hasError) ...[
          const SizedBox(height: 4),
          _buildErrorMessage(colors),
        ],
      ],
    );
  }

  Widget _buildTrigger(ColorService colors) {
    final isDisabled = !widget.enabled;
    final hasError = widget.controller.hasError;
    final hasValue = widget.controller.hasValue;
    final showClearButton = hasValue && widget.allowClear;

    return GestureDetector(
      onTap: _toggleDropdown,
      child: Container(
        key: _triggerKey,
        height: _getTriggerHeight(),
        decoration: BoxDecoration(
          color: _getTriggerBackgroundColor(colors, hasError),
          border: _getTriggerBorder(colors, hasError),
          borderRadius: BorderRadius.circular(32),
        ),
        padding: _getTriggerPadding(),
        child: Row(
          children: [
            if (widget.leadingIcon != null) ...[
              Icon(
                widget.leadingIcon,
                size: 20,
                color: _getIconColor(colors, isDisabled, hasValue),
              ),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                widget.controller.value ?? widget.placeholder,
                style: _getTextStyle().copyWith(
                  color: _getTextColor(colors, isDisabled, hasValue),
                ),
              ),
            ),
            const SizedBox(width: 8),
            showClearButton
                ? _buildClearButton(colors, isDisabled)
                : _buildChevronButton(colors, isDisabled),
          ],
        ),
      ),
    );
  }

  Widget _buildClearButton(ColorService colors, bool isDisabled) {
    return GestureDetector(
      onTap: isDisabled
          ? null
          : () {
              widget.controller.clear();
            },
      child: Container(
        width: 52,
        height: _getChevronButtonHeight(),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
        child: Center(
          child: Icon(
            LucideIcons.x,
            size: _getChevronIconSize(),
            color: isDisabled
                ? colors.buttonDisabledText
                : colors.buttonSecondaryText,
          ),
        ),
      ),
    );
  }

  Widget _buildChevronButton(ColorService colors, bool isDisabled) {
    return Container(
      width: 52,
      height: _getChevronButtonHeight(),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: Center(
        child: RotationTransition(
          turns: _rotationAnimation,
          child: Icon(
            LucideIcons.chevron_down,
            size: _getChevronIconSize(),
            color: isDisabled
                ? colors.buttonDisabledText
                : colors.buttonSecondaryText,
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _closeDropdown,
      child: Stack(
        children: [
          Positioned.fill(child: Container(color: Colors.transparent)),
          CompositedTransformFollower(
            link: _layerLink,
            targetAnchor: _openUpward ? Alignment.topLeft : Alignment.bottomLeft,
            followerAnchor: _openUpward ? Alignment.bottomLeft : Alignment.topLeft,
            offset: Offset(0, _openUpward ? -4 : 4),
            child: GestureDetector(onTap: () {}, child: _buildDropdownMenu()),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownMenu() {
    final colors = ColorService.instance;

    return Material(
      color: Colors.transparent,
      child: Container(
        width: _triggerWidth > 0 ? _triggerWidth : null,
        constraints: const BoxConstraints(
          maxHeight: 300,
        ),
        decoration: BoxDecoration(
          color: colors.dropdownMenuBackground,
          border: Border.all(color: colors.surfaceBorder, width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.all(8),
        child: widget.items.isEmpty
            ? _buildEmptyState(colors)
            : ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return _buildMenuItem(widget.items[index], colors);
                },
              ),
      ),
    );
  }

  Widget _buildMenuItem(String item, ColorService colors) {
    final isSelected = widget.controller.value == item;

    return GestureDetector(
      onTap: () => _selectItem(item),
      child: Container(
        height: _getMenuItemHeight(),
        decoration: BoxDecoration(
          color: isSelected ? colors.tabActiveBackground : colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            item,
            style: _getMenuItemTextStyle().copyWith(
              color: isSelected
                  ? colors.textPrimary
                  : colors.buttonSecondaryText,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(ColorService colors) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        'Нет доступных элементов',
        style: AppFonts.bodySmall.copyWith(color: colors.textSecondary),
      ),
    );
  }

  Widget _buildErrorMessage(ColorService colors) {
    return Padding(
      padding: _getErrorMessagePadding(),
      child: Row(
        children: [
          Icon(LucideIcons.circle_alert, size: 16, color: colors.error),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              widget.controller.errorMessage!,
              style: AppFonts.caption.copyWith(
                color: colors.error,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _getTriggerHeight() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return 36;
      case AppDropdownSize.md:
        return 46;
      case AppDropdownSize.lg:
        return 54;
      case AppDropdownSize.xl:
        return 64;
    }
  }

  double _getChevronButtonHeight() {
    switch (widget.size) {
      case AppDropdownSize.sm:
      case AppDropdownSize.md:
        return 36;
      case AppDropdownSize.lg:
      case AppDropdownSize.xl:
        return 40;
    }
  }

  double _getChevronIconSize() {
    switch (widget.size) {
      case AppDropdownSize.sm:
      case AppDropdownSize.md:
        return 16;
      case AppDropdownSize.lg:
      case AppDropdownSize.xl:
        return 20;
    }
  }

  double _getMenuItemHeight() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return 36;
      case AppDropdownSize.md:
        return 44;
      case AppDropdownSize.lg:
        return 52;
      case AppDropdownSize.xl:
        return 52;
    }
  }

  EdgeInsets _getTriggerPadding() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return const EdgeInsets.only(left: 16, right: 0);
      case AppDropdownSize.md:
        return const EdgeInsets.only(left: 18, right: 6);
      case AppDropdownSize.lg:
        return const EdgeInsets.only(left: 20, right: 6);
      case AppDropdownSize.xl:
        return const EdgeInsets.only(left: 24, right: 8);
    }
  }

  EdgeInsets _getErrorMessagePadding() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return const EdgeInsets.symmetric(horizontal: 16);
      case AppDropdownSize.md:
        return const EdgeInsets.symmetric(horizontal: 18);
      case AppDropdownSize.lg:
        return const EdgeInsets.symmetric(horizontal: 20);
      case AppDropdownSize.xl:
        return const EdgeInsets.symmetric(horizontal: 24);
    }
  }

  TextStyle _getTextStyle() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return AppFonts.bodySmall;
      case AppDropdownSize.md:
      case AppDropdownSize.lg:
      case AppDropdownSize.xl:
        return AppFonts.bodyMedium;
    }
  }

  TextStyle _getMenuItemTextStyle() {
    switch (widget.size) {
      case AppDropdownSize.sm:
        return AppFonts.bodySmall;
      case AppDropdownSize.md:
      case AppDropdownSize.lg:
      case AppDropdownSize.xl:
        return AppFonts.bodyMedium;
    }
  }

  Color _getTriggerBackgroundColor(ColorService colors, bool hasError) {
    return colors.surfaceElevated;
  }

  Border? _getTriggerBorder(ColorService colors, bool hasError) {
    return Border.all(color: colors.surfaceBorder, width: 1);
  }

  Color _getTextColor(ColorService colors, bool isDisabled, bool hasValue) {
    if (isDisabled) {
      return colors.buttonDisabledText;
    }
    if (hasValue) {
      return colors.buttonSecondaryText;
    }
    return colors.textTertiary;
  }

  Color _getIconColor(ColorService colors, bool isDisabled, bool hasValue) {
    if (isDisabled) {
      return colors.buttonDisabledText;
    }
    if (hasValue) {
      return colors.buttonSecondaryText;
    }
    return colors.textTertiary;
  }
}
