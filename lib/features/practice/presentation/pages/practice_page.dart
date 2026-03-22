import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/bole_display_card.dart';
import '../widgets/practice_controls.dart';
import '../widgets/progress_bar.dart';
import '../../providers/practice_provider.dart';
import '../../../lessons/providers/lesson_provider.dart';

class PracticePage extends ConsumerWidget {
  final String lessonId;

  const PracticePage({super.key, required this.lessonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final practiceAsync = ref.watch(practiceSessionProvider(lessonId));
    final lessonAsync = ref.watch(lessonProvider(lessonId));

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: lessonAsync.when(
          data: (lesson) => Text(lesson?.titleNepali ?? 'अभ्यास'),
          loading: () => const Text('लोड हुँदैछ...'),
          error: (_, __) => const Text('अभ्यास'),
        ),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => _showExitDialog(context),
          ),
        ],
      ),
      body: practiceAsync.when(
        data: (state) {
          if (state.isCompleted) {
            return _buildCompletionScreen(context, ref, state);
          }
          return _buildPracticeScreen(context, ref, state);
        },
        loading: () => const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('अभ्यास तयार गर्दै...', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
        error: (error, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 64, color: Colors.red),
                const SizedBox(height: 16),
                const Text(
                  'अभ्यास लोड गर्न असफल',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('फिर्ता जानुहोस्'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6366F1),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPracticeScreen(
    BuildContext context,
    WidgetRef ref,
    PracticeState state,
  ) {
    final currentBole = state.currentBole;

    if (currentBole == null) {
      return const Center(child: Text('कुनै बोले उपलब्ध छैन'));
    }

    return Column(
      children: [
        // Progress Indicator
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'बोले ${state.currentIndex + 1}/${state.totalCount}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6366F1),
                      ),
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: state.progressPercentage / 100,
                        backgroundColor: Colors.grey[200],
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xFF6366F1),
                        ),
                        minHeight: 6,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '${state.progressPercentage.toStringAsFixed(0)}%',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6366F1),
                ),
              ),
            ],
          ),
        ),

        // Bole Display - Swipeable
        Expanded(
          child: PageView.builder(
            itemCount: state.totalCount,
            controller: PageController(initialPage: state.currentIndex),
            onPageChanged: (index) {
              if (index > state.currentIndex) {
                ref.read(practiceSessionProvider(lessonId).notifier).skipBole();
              } else if (index < state.currentIndex) {
                ref
                    .read(practiceSessionProvider(lessonId).notifier)
                    .previousBole();
              }
            },
            itemBuilder: (context, index) {
              if (index == state.currentIndex) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: BoleDisplayCard(
                    bole: currentBole,
                    boleNumber: state.currentIndex + 1,
                    totalBoles: state.totalCount,
                  ).animate().fadeIn(duration: 300.ms),
                );
              }
              return const SizedBox();
            },
          ),
        ),

        // Control Buttons
        PracticeControls(
          onComplete: () {
            _showCompletionConfirmation(context, ref, currentBole.textNepali);
          },
          onSkip: () {
            ref.read(practiceSessionProvider(lessonId).notifier).skipBole();
          },
          onRetry: () {
            ref.read(practiceSessionProvider(lessonId).notifier).retryBole();
          },
          canGoBack: state.currentIndex > 0,
          onBack: () {
            ref.read(practiceSessionProvider(lessonId).notifier).previousBole();
          },
        ),
      ],
    );
  }

  Widget _buildCompletionScreen(
    BuildContext context,
    WidgetRef ref,
    PracticeState state,
  ) {
    final duration = DateTime.now().difference(state.startTime);
    final minutes = duration.inMinutes;
    final completedCount = state.boles.where((b) => b.isCompleted).length;
    final totalCount = state.boles.length;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success Icon
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.green[50],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.celebration,
                size: 64,
                color: Colors.green[600],
              ),
            ).animate().scale(
              delay: 100.ms,
              duration: 500.ms,
              curve: Curves.elasticOut,
            ),

            const SizedBox(height: 32),

            // Congratulations Text
            Text(
              'बधाई छ!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ).animate().fadeIn(delay: 300.ms),

            const SizedBox(height: 16),

            Text(
              'तपाईंले पाठ पूरा गर्नुभयो',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ).animate().fadeIn(delay: 400.ms),

            const SizedBox(height: 32),

            // Stats
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildStatRow(
                    '🎯',
                    'सम्पूर्ण बोलेहरू',
                    '$completedCount/$totalCount',
                  ),
                  const Divider(height: 32),
                  _buildStatRow('⏱️', 'समय लाग्यो', '$minutes मिनेट'),
                ],
              ),
            ).animate().fadeIn(delay: 500.ms).slideY(begin: 0.2, end: 0),

            const SizedBox(height: 32),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6366F1),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'पाठ सूचीमा फर्कनुहोस्',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ).animate().fadeIn(delay: 600.ms),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String emoji, String label, String value) {
    return Row(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 24)),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            label,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6366F1),
          ),
        ),
      ],
    );
  }

  void _showCompletionConfirmation(
    BuildContext context,
    WidgetRef ref,
    String boleText,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('बोले पूरा गर्नुहोस्?'),
        content: Text('के तपाईं "$boleText" सिकिसक्नुभयो?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('रद्द गर्नुहोस्'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref
                  .read(practiceSessionProvider(lessonId).notifier)
                  .completeBole();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text('हो, पूरा भयो'),
          ),
        ],
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('अभ्यास छोड्नुहुन्छ?'),
        content: const Text('तपाईंको प्रगति सुरक्षित गरिनेछ।'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('रद्द गर्नुहोस्'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('छोड्नुहोस्'),
          ),
        ],
      ),
    );
  }
}
