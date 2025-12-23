import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../data/models/lesson_model.dart';
import '../../data/models/bole_model.dart';
import '../../data/models/user_profile_model.dart';
import '../../data/models/user_progress_model.dart';
import '../../data/models/bole_completion_model.dart';
import '../../data/models/practice_session_model.dart';

/// Isar Database Service
class IsarDatabaseService {
  static Isar? _isar;

  /// Initialize Isar database
  static Future<Isar> initialize() async {
    if (_isar != null && _isar!.isOpen) {
      return _isar!;
    }

    final dir = await getApplicationDocumentsDirectory();

    _isar = await Isar.open(
      [
        LessonModelSchema,
        BoleModelSchema,
        UserProfileModelSchema,
        UserProgressModelSchema,
        BoleCompletionModelSchema,
        PracticeSessionModelSchema,
      ],
      directory: dir.path,
      name: 'gunla_baja_db',
      inspector: true, // Enable inspector for debugging
    );

    return _isar!;
  }

  /// Get Isar instance
  static Isar get instance {
    if (_isar == null || !_isar!.isOpen) {
      throw Exception('Isar not initialized. Call initialize() first.');
    }
    return _isar!;
  }

  /// Close database
  static Future<void> close() async {
    await _isar?.close();
    _isar = null;
  }

  /// Clear all data (for logout/reset)
  static Future<void> clearAllData() async {
    final isar = instance;
    await isar.writeTxn(() async {
      await isar.clear();
    });
  }

  /// Clear user-specific data (for logout)
  static Future<void> clearUserData(String userId) async {
    final isar = instance;
    await isar.writeTxn(() async {
      await isar.userProgressModels.filter().userIdEqualTo(userId).deleteAll();
      await isar.boleCompletionModels
          .filter()
          .userIdEqualTo(userId)
          .deleteAll();
      await isar.practiceSessionModels
          .filter()
          .userIdEqualTo(userId)
          .deleteAll();
      await isar.userProfileModels.filter().idEqualTo(userId).deleteAll();
    });
  }
}
