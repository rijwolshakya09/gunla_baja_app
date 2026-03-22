import 'package:gunla_baja_flutter/core/database/isar_provider.dart';
import 'package:gunla_baja_flutter/data/models/bole_model.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bole_repository.g.dart';

@riverpod
Future<BoleRepository> boleRepository(BoleRepositoryRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return BoleRepository(isar);
}

class BoleRepository {
  final Isar _isar;

  BoleRepository(this._isar);

  // ============ CREATE ============

  /// Save multiple boles
  Future<void> saveBoles(List<BoleModel> boles) async {
    await _isar.writeTxn(() async {
      await _isar.boleModels.putAll(boles);
    });
  }

  /// Save boles while preserving local progress (for syncing)
  Future<void> saveBolesPreservingProgress(List<BoleModel> boles) async {
    await _isar.writeTxn(() async {
      for (final bole in boles) {
        // Check if bole already exists
        final existing = await _isar.boleModels
            .where()
            .filter()
            .idEqualTo(bole.id)
            .findFirst();

        if (existing != null) {
          // Preserve local completion status
          final updated = bole.copyWith(
            isCompleted: existing.isCompleted,
            attempts: existing.attempts,
          );
          await _isar.boleModels.put(updated);
          print(
            'Updated bole ${bole.id}, preserved completion: ${existing.isCompleted}',
          );
        } else {
          // New bole, save as is
          await _isar.boleModels.put(bole);
          print('Added new bole ${bole.id}');
        }
      }
    });
  }

  // ============ READ ============

  /// Get all boles for a lesson
  Future<List<BoleModel>> getBolesByLesson(String lessonId) async {
    return await _isar.boleModels
        .where()
        .filter()
        .lessonIdEqualTo(lessonId)
        .sortByOrderIndex()
        .findAll();
  }

  /// Watch boles for a lesson (real-time)
  Stream<List<BoleModel>> watchBolesByLesson(String lessonId) {
    return _isar.boleModels
        .where()
        .filter()
        .lessonIdEqualTo(lessonId)
        .sortByOrderIndex()
        .watch(fireImmediately: true);
  }

  /// Get bole by ID
  Future<BoleModel?> getBoleById(String id) async {
    return await _isar.boleModels.where().filter().idEqualTo(id).findFirst();
  }

  /// Get next incomplete bole in lesson
  Future<BoleModel?> getNextIncompleteBole(String lessonId) async {
    return await _isar.boleModels
        .where()
        .filter()
        .lessonIdEqualTo(lessonId)
        .and()
        .isCompletedEqualTo(false)
        .sortByOrderIndex()
        .findFirst();
  }

  // ============ UPDATE ============

  /// Mark bole as completed
  Future<void> markBoleCompleted(String id) async {
    await _isar.writeTxn(() async {
      final bole = await _isar.boleModels
          .where()
          .filter()
          .idEqualTo(id)
          .findFirst();
      if (bole != null) {
        final updated = bole.copyWith(
          isCompleted: true,
          attempts: bole.attempts + 1,
        );
        await _isar.boleModels.put(updated);
        print(
          'Bole marked as completed: $id, isCompleted=${updated.isCompleted}',
        );
      } else {
        print('Bole not found: $id');
      }
    });
    // Verify the update
    final verifyBole = await _isar.boleModels
        .where()
        .filter()
        .idEqualTo(id)
        .findFirst();
    print('Verification - Bole $id isCompleted: ${verifyBole?.isCompleted}');
  }

  /// Increment bole attempts
  Future<void> incrementBoleAttempts(String id) async {
    await _isar.writeTxn(() async {
      final bole = await getBoleById(id);
      if (bole != null) {
        final updated = bole.copyWith(attempts: bole.attempts + 1);
        await _isar.boleModels.put(updated);
      }
    });
  }

  // ============ DELETE ============

  /// Delete boles by lesson
  Future<void> deleteBolesForLesson(String lessonId) async {
    await _isar.writeTxn(() async {
      await _isar.boleModels.filter().lessonIdEqualTo(lessonId).deleteAll();
    });
  }

  // ============ BUSINESS LOGIC ============

  /// Get completion stats for a lesson
  Future<Map<String, int>> getLessonCompletionStats(String lessonId) async {
    final boles = await getBolesByLesson(lessonId);
    final completed = boles.where((b) => b.isCompleted).length;

    return {
      'total': boles.length,
      'completed': completed,
      'remaining': boles.length - completed,
    };
  }
}
