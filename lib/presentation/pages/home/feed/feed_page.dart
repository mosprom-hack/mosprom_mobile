import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/services/color_service.dart';
import '../../../../core/utils/time_formatter.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../../../../ui/tabs/app_tab_data.dart';
import '../../../widgets/community_post_card.dart';
import 'blocs/feed_bloc.dart';
import 'blocs/feed_event.dart';
import 'blocs/feed_state.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FeedBloc>()..add(const LoadPostsEvent()),
      child: const _FeedPageContent(),
    );
  }
}

class _FeedPageContent extends StatelessWidget {
  const _FeedPageContent();

  @override
  Widget build(BuildContext context) {
    final colors = ColorService.instance;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(colors),
            Expanded(
              child: AppTabs(
                tabs: [
                  AppTabData(
                    label: 'Новости',
                    content: _buildPostsTab(),
                  ),
                  AppTabData(
                    label: '🔥 Популярное',
                    content: _buildPostsTab(),
                  ),
                  AppTabData(
                    label: 'Трансляции',
                    content: _buildPostsTab(),
                  ),
                  AppTabData(
                    label: 'Рядом',
                    content: _buildPostsTab(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ColorService colors) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 42,
              height: 36,
              decoration: BoxDecoration(
                color: colors.buttonSecondaryBackground,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Icon(
                LucideIcons.bell,
                size: 16,
                color: colors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostsTab() {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state is FeedLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        if (state is FeedError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.inbox,
                    size: 64,
                    color: ColorService.instance.textSecondary,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: AppFonts.h4.copyWith(
                      color: ColorService.instance.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        if (state is FeedLoaded) {
          if (state.posts.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LucideIcons.inbox,
                      size: 64,
                      color: ColorService.instance.textSecondary,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Постов пока нет',
                      textAlign: TextAlign.center,
                      style: AppFonts.h4.copyWith(
                        color: ColorService.instance.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: state.posts.length,
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            itemBuilder: (context, index) {
              final post = state.posts[index];
              return CommunityPostCard(
                authorName: post.community.title,
                authorAvatarUrl: post.community.photoUrl,
                timestamp: TimeFormatter.formatTimeAgo(post.createdAt),
                postImageUrl: post.firstImageUrl,
                content: post.description,
                likesCount: post.likesCount,
                commentsCount: 0,
                sharesCount: 0,
              );
            },
          );
        }

        return const SizedBox();
      },
    );
  }
}

