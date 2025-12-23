import 'package:gunla_baja_flutter/data/models/lesson_model.dart';

/// Domain entity for Lesson (business logic layer)
class LessonEntity {
  final String id;
  final String titleNepali;
  final String titleEnglish;
  final String? descriptionNepali;
  final String? descriptionEnglish;
  final int level;
  final int orderIndex;
  final bool isUnlocked;
  final bool isCompleted;
  final int completedBoles;
  final int totalBoles;

  const LessonEntity({
    required this.id,
    required this.titleNepali,
    required this.titleEnglish,
    this.descriptionNepali,
    this.descriptionEnglish,
    required this.level,
    required this.orderIndex,
    required this.isUnlocked,
    required this.isCompleted,
    required this.completedBoles,
    required this.totalBoles,
  });

  double get progressPercentage {
    if (totalBoles == 0) return 0;
    return (completedBoles / totalBoles) * 100;
  }

  bool get canUnlock => level == 1 || isUnlocked;

  factory LessonEntity.fromModel(LessonModel model) {
    return LessonEntity(
      id: model.id,
      titleNepali: model.titleNepali,
      titleEnglish: model.titleEnglish,
      descriptionNepali: model.descriptionNepali,
      descriptionEnglish: model.descriptionEnglish,
      level: model.level,
      orderIndex: model.orderIndex,
      isUnlocked: model.isUnlocked,
      isCompleted: model.isCompleted,
      completedBoles: model.completedBoles,
      totalBoles: model.totalBoles,
    );
  }
}
