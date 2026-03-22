import 'package:gunla_baja_flutter/core/database/isar_database.dart';
import 'package:gunla_baja_flutter/core/services/supabase_service.dart';
import 'package:gunla_baja_flutter/core/services/sync_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialization_provider.g.dart';

@riverpod
class AppInitialization extends _$AppInitialization {
  @override
  Future<void> build() async {
    try {
      // Initialize database
      print('Initializing Isar database...');
      await IsarDatabaseService.initialize();
      print('Isar database initialized');

      // Initialize Supabase
      print('Initializing Supabase...');
      await initializeSupabase();
      print('Supabase initialized');

      // Perform initial sync
      print('Performing initial sync...');
      final syncService = await ref.read(syncServiceProvider.future);
      await syncService.performInitialSync();
      print('Initial sync completed');
    } catch (e, stackTrace) {
      print('Initialization error: $e');
      print('Stack trace: $stackTrace');

      // Try to ensure basic functionality even if sync fails
      try {
        await IsarDatabaseService.initialize();
        final syncService = await ref.read(syncServiceProvider.future);
        await syncService.performInitialSync();
      } catch (recoveryError) {
        print('Recovery failed: $recoveryError');
        throw Exception('Failed to initialize app: $e');
      }
    }
  }

  /// Retry initialization
  Future<void> retry() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build());
  }
}
