import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import '../../../../core/consts/app_fonts.dart';
import '../../../../core/services/color_service.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../../../../ui/tabs/app_tab_data.dart';
import '../../../widgets/community_post_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

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
                    content: _buildNewsTab(),
                  ),
                  AppTabData(
                    label: '🔥 Популярное',
                    content: _buildPlaceholderTab('Популярное'),
                  ),
                  AppTabData(
                    label: 'Трансляции',
                    content: _buildPlaceholderTab('Трансляции'),
                  ),
                  AppTabData(
                    label: 'Рядом',
                    content: _buildPlaceholderTab('Рядом'),
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

  Widget _buildNewsTab() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemBuilder: (context, index) {
        return CommunityPostCard(
          authorName: 'ТехноКод',
          timestamp: '50 минут назад',
          content: '''Мы создали IoT-датчик на микроконтроллере — и приглашаем вас на воркшоп! 🔧

Разработали компактный IoT-датчик экологического мониторинга: измеряет CO₂, влажность и температуру, передаёт данные в облако по LoRaWAN и работает 8 месяцев от батареи.

• собрали прототип на STM32L4;
• снизили потребление с 50 мА до 15 мкА за счёт оптимизации прошивки;
• интегрировали с AWS IoT.''',
          likesCount: 370,
          commentsCount: 29,
          sharesCount: 262,
        );
      },
    );
  }

  Widget _buildPlaceholderTab(String tabName) {
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
              'Раздел "$tabName"\nпока пустой',
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
}

