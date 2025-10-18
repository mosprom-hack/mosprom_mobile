import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/pages/home/feed/feed_page.dart';
import '../../presentation/pages/home/communities/communities_page.dart';
import '../../presentation/pages/home/education/education_page.dart';
import '../../presentation/pages/home/profile/profile_page.dart';
import '../../presentation/pages/home/education/mentor_detail/mentor_detail_page.dart';
import 'app_routes.dart';
import 'scaffold_with_navbar.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.feed,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavbar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.feed,
                name: 'feed',
                builder: (context, state) => const FeedPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.communities,
                name: 'communities',
                builder: (context, state) => const CommunitiesPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.education,
                name: 'education',
                builder: (context, state) => const EducationPage(),
                routes: [
                  GoRoute(
                    path: 'mentor/:id',
                    name: 'mentorDetail',
                    builder: (context, state) {
                      final id = state.pathParameters['id'] ?? '1';
                      return MentorDetailPage(mentorId: id);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.profile,
                name: 'profile',
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => _ErrorPage(error: state.error),
  );
}

class _ErrorPage extends StatelessWidget {
  const _ErrorPage({required this.error});

  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            const Text(
              'Page not found',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            if (error != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
