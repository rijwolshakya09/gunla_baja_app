import 'package:gunla_baja_flutter/data/models/bole_model.dart';

/// Domain entity for Bole (business logic layer)
class BoleEntity {
  final String id;
  final String lessonId;
  final String textNepali;
  final String textEnglish;
  final String pronunciation;
  final String? audioUrl;
  final int orderIndex;
  final bool isCompleted;
  final int attempts;

  const BoleEntity({
    required this.id,
    required this.lessonId,
    required this.textNepali,
    required this.textEnglish,
    required this.pronunciation,
    this.audioUrl,
    required this.orderIndex,
    required this.isCompleted,
    required this.attempts,
  });

  factory BoleEntity.fromModel(BoleModel model) {
    return BoleEntity(
      id: model.id,
      lessonId: model.lessonId,
      textNepali: model.textNepali,
      textEnglish: model.textEnglish,
      pronunciation: model.pronunciation,
      audioUrl: model.audioUrl,
      orderIndex: model.orderIndex,
      isCompleted: model.isCompleted,
      attempts: model.attempts,
    );
  }
}
