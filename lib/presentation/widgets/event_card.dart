import 'package:flutter/material.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';
import '../../ui/chips/app_chip.dart';
import '../../ui/chips/app_chip_enums.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String category;
  final String eventType;
  final String? imageUrl;
  final VoidCallback? onTap;

  const EventCard({
    super.key,
    required this.title,
    required this.category,
    required this.eventType,
    this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? Image.network(
                      imageUrl!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildPlaceholder(colors);
                      },
                    )
                  : _buildPlaceholder(colors),
            ),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AppChip(
                  label: category,
                  variant: AppChipVariant.recommended,
                  size: AppChipSize.xs,
                ),
                const SizedBox(width: 4),
                AppChip(
                  label: eventType,
                  variant: AppChipVariant.defaultChip,
                  size: AppChipSize.xs,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: AppFonts.bodyMedium.copyWith(
              color: colors.textPrimary.withValues(alpha: 0.9),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 16 / 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholder(ColorService colors) {
    return Container(
      width: double.infinity,
      color: colors.surfaceElevated,
    );
  }
}
