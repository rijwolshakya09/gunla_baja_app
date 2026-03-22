import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/bole_repository.dart';
import '../../../domain/entities/bole_entity.dart';

part 'advanced_practice_provider.g.dart';

enum PracticeMode {
  basic, // Learn each bole individually
  section, // Practice by sections
  continuous, // Full taal from start to finish
  variation, // Focus on variations
  speed, // Practice with tempo increase
}

class PracticeModeConfig {
  final PracticeMode mode;
  final bool showNotation;
  final bool playMetronome;
  final int? targetBpm;
  final bool loopSection;

  const PracticeModeConfig({
    required this.mode,
    this.showNotation = false,
    this.playMetronome = false,
    this.targetBpm,
    this.loopSection = false,
  });
}

@riverpod
class AdvancedPracticeSession extends _$AdvancedPracticeSession {
  @override
  Future<AdvancedPracticeState> build(String lessonId) async {
    final boleRepo = await ref.watch(boleRepositoryProvider.future);
    final boles = await boleRepo.getBolesByLesson(lessonId);

    // Group boles by section if lesson has sections
    final sections = await _loadSections(lessonId);

    return AdvancedPracticeState(
      lessonId: lessonId,
      boles: boles.map((m) => BoleEntity.fromModel(m)).toList(),
      sections: sections,
      currentSectionIndex: 0,
      currentBoleIndex: 0,
      mode: PracticeMode.basic,
      isCompleted: false,
      startTime: DateTime.now(),
    );
  }

  Future<List<BoleSection>> _loadSections(String lessonId) async {
    // Load sections from database
    // Return empty list if no sections
    return [];
  }

  /// Switch practice mode
  void changePracticeMode(PracticeMode mode) {
    final currentState = state.requireValue;
    state = AsyncValue.data(currentState.copyWith(mode: mode));
  }

  /// Toggle notation display
  void toggleNotation() {
    final currentState = state.requireValue;
    state = AsyncValue.data(
      currentState.copyWith(showNotation: !currentState.showNotation),
    );
  }

  /// Toggle metronome
  void toggleMetronome() {
    final currentState = state.requireValue;
    state = AsyncValue.data(
      currentState.copyWith(playMetronome: !currentState.playMetronome),
    );
  }

  /// Move to next section
  void nextSection() {
    final currentState = state.requireValue;
    if (currentState.currentSectionIndex < currentState.sections.length - 1) {
      state = AsyncValue.data(
        currentState.copyWith(
          currentSectionIndex: currentState.currentSectionIndex + 1,
          currentBoleIndex: 0,
        ),
      );
    }
  }

  /// Practice specific variation
  void practiceVariation(String boleId) {
    // Load variation boles for practice
  }
}

class AdvancedPracticeState {
  final String lessonId;
  final List<BoleEntity> boles;
  final List<BoleSection> sections;
  final int currentSectionIndex;
  final int currentBoleIndex;
  final PracticeMode mode;
  final bool isCompleted;
  final DateTime startTime;
  final bool showNotation;
  final bool playMetronome;
  final int? currentBpm;

  const AdvancedPracticeState({
    required this.lessonId,
    required this.boles,
    required this.sections,
    required this.currentSectionIndex,
    required this.currentBoleIndex,
    required this.mode,
    required this.isCompleted,
    required this.startTime,
    this.showNotation = false,
    this.playMetronome = false,
    this.currentBpm,
  });

  BoleSection? get currentSection =>
      sections.isEmpty ? null : sections[currentSectionIndex];

  BoleEntity? get currentBole =>
      currentBoleIndex < boles.length ? boles[currentBoleIndex] : null;

  AdvancedPracticeState copyWith({
    String? lessonId,
    List<BoleEntity>? boles,
    List<BoleSection>? sections,
    int? currentSectionIndex,
    int? currentBoleIndex,
    PracticeMode? mode,
    bool? isCompleted,
    DateTime? startTime,
    bool? showNotation,
    bool? playMetronome,
    int? currentBpm,
  }) {
    return AdvancedPracticeState(
      lessonId: lessonId ?? this.lessonId,
      boles: boles ?? this.boles,
      sections: sections ?? this.sections,
      currentSectionIndex: currentSectionIndex ?? this.currentSectionIndex,
      currentBoleIndex: currentBoleIndex ?? this.currentBoleIndex,
      mode: mode ?? this.mode,
      isCompleted: isCompleted ?? this.isCompleted,
      startTime: startTime ?? this.startTime,
      showNotation: showNotation ?? this.showNotation,
      playMetronome: playMetronome ?? this.playMetronome,
      currentBpm: currentBpm ?? this.currentBpm,
    );
  }
}

class BoleSection {
  final String id;
  final String titleNepali;
  final String? titleEnglish;
  final String sectionType;
  final List<String> boleIds;
  final bool isOptional;

  const BoleSection({
    required this.id,
    required this.titleNepali,
    this.titleEnglish,
    required this.sectionType,
    required this.boleIds,
    required this.isOptional,
  });
}
