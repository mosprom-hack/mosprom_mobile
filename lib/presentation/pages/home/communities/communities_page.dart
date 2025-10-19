import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/services/color_service.dart';
import '../../../../ui/text_fields/app_text_field.dart';
import '../../../../ui/text_fields/app_text_field_size.dart';
import '../../../widgets/community_card.dart';
import 'blocs/communities_bloc.dart';
import 'blocs/communities_event.dart';
import 'blocs/communities_state.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<CommunitiesBloc>()..add(const LoadCommunitiesEvent()),
      child: const _CommunitiesPageContent(),
    );
  }
}

class _CommunitiesPageContent extends StatefulWidget {
  const _CommunitiesPageContent();

  @override
  State<_CommunitiesPageContent> createState() =>
      _CommunitiesPageContentState();
}

class _CommunitiesPageContentState extends State<_CommunitiesPageContent> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    context.read<CommunitiesBloc>().add(SearchCommunitiesEvent(query));
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
      onChanged: _onSearchChanged,
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
    return BlocBuilder<CommunitiesBloc, CommunitiesState>(
      builder: (context, state) {
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
            if (state is CommunitiesLoading)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: CupertinoActivityIndicator(),
                ),
              )
            else if (state is CommunitiesError)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    state.message,
                    style: AppFonts.bodyMedium.copyWith(
                      color: colors.textPrimary.withValues(alpha: 0.7),
                    ),
                  ),
                ),
              )
            else if (state is CommunitiesLoaded)
              state.filteredCommunities.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          'Сообщества не найдены',
                          style: AppFonts.bodyMedium.copyWith(
                            color: colors.textPrimary.withValues(alpha: 0.7),
                          ),
                        ),
                      ),
                    )
                  : Column(
                      children: state.filteredCommunities
                          .map(
                            (community) => CommunityCard(
                              name: community.title,
                              category: community.type,
                              avatarUrl: community.photoUrl,
                              onPlusPressed: () {},
                            ),
                          )
                          .toList(),
                    ),
          ],
        );
      },
    );
  }
}
