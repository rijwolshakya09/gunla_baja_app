import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';
import '../../../../domain/entities/lesson_entity.dart';
import '../widgets/lesson_card.dart';
import '../widgets/progress_header.dart';
import '../../providers/lesson_provider.dart';

class LessonsPage extends ConsumerWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonsAsync = ref.watch(lessonsProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: lessonsAsync.when(
          data: (lessons) => _buildLessonsList(context, lessons),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const Gap(16),
                Text('त्रुटि: $error'),
                const Gap(16),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(lessonsProvider);
                  },
                  child: const Text('पुनः प्रयास गर्नुहोस्'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLessonsList(BuildContext context, List<LessonEntity> lessons) {
    if (lessons.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school_outlined, size: 64, color: Colors.grey[400]),
            const Gap(16),
            Text(
              'कुनै पाठ उपलब्ध छैन',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
          ],
        ),
      );
    }

    // Group lessons by level
    final lessonsByLevel = <int, List<LessonEntity>>{};
    for (final lesson in lessons) {
      lessonsByLevel.putIfAbsent(lesson.level, () => []).add(lesson);
    }

    return CustomScrollView(
      slivers: [
        // App Bar
        SliverAppBar(
          expandedHeight: 120,
          floating: false,
          pinned: true,
          backgroundColor: const Color(0xFF6366F1),
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'गुँला बाजा सिक्नुहोस्',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                ),
              ),
            ),
          ),
        ),

        // Progress Header
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ProgressHeader(lessons: lessons),
          ),
        ),

        // Lessons by Level
        ...lessonsByLevel.entries.map((entry) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                  child: Text(
                    'स्तर ${entry.key}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                );
              }

              final lesson = entry.value[index - 1];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: LessonCard(
                  lesson: lesson,
                  onTap: () {
                    if (lesson.isUnlocked) {
                      context.push('/lesson/${lesson.id}');
                    } else {
                      _showLockedDialog(context);
                    }
                  },
                ),
              );
            }, childCount: entry.value.length + 1),
          );
        }),

        const SliverGap(32),
      ],
    );
  }

  void _showLockedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('🔒 बन्द पाठ'),
        content: const Text('यो पाठ अनलक गर्न अघिल्लो पाठहरू पूरा गर्नुहोस्।'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ठीक छ'),
          ),
        ],
      ),
    );
  }
}
