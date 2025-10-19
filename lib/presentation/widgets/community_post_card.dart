import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../core/consts/app_fonts.dart';
import '../../core/services/color_service.dart';

class CommunityPostCard extends StatefulWidget {
  final String authorName;
  final String? authorAvatarUrl;
  final String timestamp;
  final String? postImageUrl;
  final String content;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;

  const CommunityPostCard({
    super.key,
    required this.authorName,
    this.authorAvatarUrl,
    required this.timestamp,
    this.postImageUrl,
    required this.content,
    required this.likesCount,
    required this.commentsCount,
    required this.sharesCount,
  });

  @override
  State<CommunityPostCard> createState() => _CommunityPostCardState();
}

class _CommunityPostCardState extends State<CommunityPostCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(colors),
          const SizedBox(height: 12),
          _buildContent(colors),
          const SizedBox(height: 12),
          _buildActionButtons(colors),
        ],
      ),
    );
  }

  Widget _buildHeader(ColorService colors) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          _buildAvatar(colors),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: AppFonts.h6.copyWith(
                    color: colors.textPrimary.withValues(alpha: 0.9),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  widget.timestamp,
                  style: AppFonts.bodySmall.copyWith(
                    color: colors.textPrimary.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
          _buildSubscribeButton(colors),
        ],
      ),
    );
  }

  Widget _buildAvatar(ColorService colors) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: colors.surfaceElevated,
        border: Border.all(
          color: colors.surfaceBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: widget.authorAvatarUrl != null && widget.authorAvatarUrl!.isNotEmpty
            ? Image.network(
                widget.authorAvatarUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildAvatarPlaceholder(colors);
                },
              )
            : _buildAvatarPlaceholder(colors),
      ),
    );
  }

  Widget _buildAvatarPlaceholder(ColorService colors) {
    return Container(
      color: colors.surfaceElevated,
    );
  }

  Widget _buildSubscribeButton(ColorService colors) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(
          color: colors.buttonSecondaryBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Подписаться',
            style: AppFonts.labelMedium.copyWith(
              color: colors.buttonSecondaryText,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(ColorService colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.postImageUrl != null && widget.postImageUrl!.isNotEmpty)
          _buildPostImage(colors),
        if (widget.postImageUrl != null && widget.postImageUrl!.isNotEmpty)
          const SizedBox(height: 12),
        _buildTextContent(colors),
      ],
    );
  }

  Widget _buildPostImage(ColorService colors) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: widget.postImageUrl != null && widget.postImageUrl!.isNotEmpty
          ? Image.network(
              widget.postImageUrl!,
              width: double.infinity,
              height: 270,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return _buildImagePlaceholder(colors);
              },
            )
          : _buildImagePlaceholder(colors),
    );
  }

  Widget _buildImagePlaceholder(ColorService colors) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: BoxDecoration(
        color: colors.surfaceElevated,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }

  Widget _buildTextContent(ColorService colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.content,
          style: AppFonts.bodyMedium.copyWith(
            color: colors.textPrimary,
            height: 1.43,
          ),
          maxLines: _isExpanded ? null : 5,
          overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        if (!_isExpanded) ...[
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = true;
              });
            },
            child: Text(
              'Показать еще',
              style: AppFonts.labelSmall.copyWith(
                color: colors.textPrimary.withValues(alpha: 0.4),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildActionButtons(ColorService colors) {
    return Row(
      children: [
        _buildActionButton(
          icon: LucideIcons.heart,
          count: widget.likesCount,
          colors: colors,
        ),
        const SizedBox(width: 12),
        _buildActionButton(
          icon: LucideIcons.message_square,
          count: widget.commentsCount,
          colors: colors,
        ),
        const SizedBox(width: 12),
        _buildActionButton(
          icon: LucideIcons.share,
          count: widget.sharesCount,
          colors: colors,
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required int count,
    required ColorService colors,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: colors.textPrimary,
        ),
        const SizedBox(width: 8),
        Text(
          count.toString(),
          style: AppFonts.labelSmall.copyWith(
            color: colors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
