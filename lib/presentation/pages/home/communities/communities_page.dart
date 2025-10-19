import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/text_fields/app_text_field.dart';
import '../../../../ui/text_fields/app_text_field_size.dart';
import '../../../widgets/community_card.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                _buildHeader(colors),
                const SizedBox(height: 16),
                _buildSearchField(),
                const SizedBox(height: 16),
                _buildMapSection(colors),
                const SizedBox(height: 24),
                _buildCommunitiesSection(colors),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ColorService colors) {
    return Center(
      child: Text(
        'Сообщества',
        style: AppFonts.bodyMedium.copyWith(
          color: colors.textPrimary.withValues(alpha: 0.9),
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return AppTextField(
      controller: _searchController,
      size: AppTextFieldSize.md,
      placeholder: 'Поиск сообществ',
      leadingIcon: LucideIcons.search,
    );
  }

  Widget _buildMapSection(ColorService colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'НАЙДЕНО НА КАРТЕ',
              style: const TextStyle(
                fontFamily: AppFonts.sfpro,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 16 / 14,
              ).copyWith(
                color: colors.textPrimary.withValues(alpha: 0.5),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Показать все',
                style: const TextStyle(
                  fontFamily: AppFonts.sfpro,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 16 / 14,
                ).copyWith(
                  color: colors.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/communities_map.png',
            width: double.infinity,
            height: 139,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 139,
                decoration: BoxDecoration(
                  color: colors.surfaceElevated,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCommunitiesSection(ColorService colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'СООБЩЕСТВА',
          style: const TextStyle(
            fontFamily: AppFonts.sfpro,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 16 / 14,
          ).copyWith(
            color: colors.textPrimary.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            CommunityCard(
              name: 'ТехноКод',
              category: 'Образование',
              avatarUrl: null,
              onPlusPressed: () {},
            ),
            CommunityCard(
              name: 'ТехноКод',
              category: 'Образование',
              avatarUrl: null,
              onPlusPressed: () {},
            ),
            CommunityCard(
              name: 'ТехноКод',
              category: 'Образование',
              avatarUrl: null,
              onPlusPressed: () {},
            ),
            CommunityCard(
              name: 'ТехноКод',
              category: 'Образование',
              avatarUrl: null,
              onPlusPressed: () {},
            ),
            CommunityCard(
              name: 'ТехноКод',
              category: 'Образование',
              avatarUrl: null,
              onPlusPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
