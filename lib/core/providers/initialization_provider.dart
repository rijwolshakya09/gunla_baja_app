import 'package:gunla_baja_flutter/core/database/isar_database.dart';
import 'package:gunla_baja_flutter/core/services/supabase_service.dart';
import 'package:gunla_baja_flutter/core/services/sync_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialization_provider.g.dart';

@riverpod
class AppInitialization extends _$AppInitialization {
  @override
  Future<void> build() async {
    await IsarDatabaseService.initialize();
    await initializeSupabase();

    final syncService = await ref.read(syncServiceProvider.future);
    await syncService.performInitialSync();
  }

  /// Retry initialization
  Future<void> retry() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build());
  }
}
