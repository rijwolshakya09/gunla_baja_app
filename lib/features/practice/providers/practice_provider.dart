import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/bole_repository.dart';
import '../../../domain/entities/bole_entity.dart';
import '../../lessons/providers/lesson_provider.dart';

part 'practice_provider.g.dart';

/// Provider to watch boles for a lesson
@riverpod
Stream<List<BoleEntity>> lessonBoles(
  LessonBolesRef ref,
  String lessonId,
) async* {
  final repository = await ref.watch(boleRepositoryProvider.future);

  await for (final models in repository.watchBolesByLesson(lessonId)) {
    yield models.map((m) => BoleEntity.fromModel(m)).toList();
  }
}

/// Practice session state
class PracticeState {
  final String lessonId;
  final List<BoleEntity> boles;
  final int currentIndex;
  final bool isCompleted;
  final DateTime startTime;

  const PracticeState({
    required this.lessonId,
    required this.boles,
    required this.currentIndex,
    required this.isCompleted,
    required this.startTime,
  });

  BoleEntity? get currentBole =>
      currentIndex < boles.length ? boles[currentIndex] : null;

  int get completedCount => boles.where((b) => b.isCompleted).length;
  int get totalCount => boles.length;
  double get progressPercentage =>
      totalCount > 0 ? (completedCount / totalCount) * 100 : 0;

  PracticeState copyWith({
    String? lessonId,
    List<BoleEntity>? boles,
    int? currentIndex,
    bool? isCompleted,
    DateTime? startTime,
  }) {
    return PracticeState(
      lessonId: lessonId ?? this.lessonId,
      boles: boles ?? this.boles,
      currentIndex: currentIndex ?? this.currentIndex,
      isCompleted: isCompleted ?? this.isCompleted,
      startTime: startTime ?? this.startTime,
    );
  }
}

/// Practice session controller
@riverpod
class PracticeSession extends _$PracticeSession {
  @override
  Future<PracticeState> build(String lessonId) async {
    final boleRepo = await ref.watch(boleRepositoryProvider.future);
    final boleModels = await boleRepo.getBolesByLesson(lessonId);
    final boles = boleModels.map((m) => BoleEntity.fromModel(m)).toList();

    return PracticeState(
      lessonId: lessonId,
      boles: boles,
      currentIndex: 0,
      isCompleted: false,
      startTime: DateTime.now(),
    );
  }

  /// Mark current bole as completed and move to next
  Future<void> completeBole() async {
    try {
      final currentState = state.requireValue;
      final currentBole = currentState.currentBole;

      if (currentBole == null) return;

      // Mark bole as completed
      final boleRepo = await ref.read(boleRepositoryProvider.future);
      await boleRepo.markBoleCompleted(currentBole.id);

      // Update lesson progress via lesson actions
      final lessonActions = ref.read(lessonActionsProvider.notifier);
      await lessonActions.completeBole(currentState.lessonId, currentBole.id);

      // Reload boles to get updated completion status
      final updatedBoles = await boleRepo.getBolesByLesson(
        currentState.lessonId,
      );
      final updatedBoleEntities = updatedBoles
          .map((m) => BoleEntity.fromModel(m))
          .toList();

      // Move to next bole or complete session
      final nextIndex = currentState.currentIndex + 1;
      final isLastBole = nextIndex >= updatedBoleEntities.length;

      if (isLastBole) {
        // All boles completed
        state = AsyncValue.data(
          currentState.copyWith(boles: updatedBoleEntities, isCompleted: true),
        );
      } else {
        // Move to next bole
        state = AsyncValue.data(
          currentState.copyWith(
            boles: updatedBoleEntities,
            currentIndex: nextIndex,
          ),
        );
      }
    } catch (e, stackTrace) {
      print('Error completing bole: $e');
      state = AsyncValue.error(e, stackTrace);
    }
  }

  /// Skip to next bole (for practice mode)
  void skipBole() {
    final currentState = state.requireValue;
    final nextIndex = currentState.currentIndex + 1;

    if (nextIndex < currentState.boles.length) {
      state = AsyncValue.data(currentState.copyWith(currentIndex: nextIndex));
    }
  }

  /// Go back to previous bole
  void previousBole() {
    final currentState = state.requireValue;
    if (currentState.currentIndex > 0) {
      state = AsyncValue.data(
        currentState.copyWith(currentIndex: currentState.currentIndex - 1),
      );
    }
  }

  /// Retry current bole
  Future<void> retryBole() async {
    final currentState = state.requireValue;
    final currentBole = currentState.currentBole;

    if (currentBole == null) return;

    // Increment attempts
    final boleRepo = await ref.read(boleRepositoryProvider.future);
    await boleRepo.incrementBoleAttempts(currentBole.id);
  }
}
