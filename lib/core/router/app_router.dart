import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/lessons/presentation/pages/lessons_page.dart';
import '../../features/practice/presentation/pages/practice_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LessonsPage(),
      ),
      GoRoute(
        path: '/lesson/:id',
        builder: (context, state) {
          final lessonId = state.pathParameters['id']!;
          return PracticePage(lessonId: lessonId);
        },
      ),
    ],
  );
}
