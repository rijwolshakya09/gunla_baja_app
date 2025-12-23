import 'package:gunla_baja_flutter/core/database/isar_database.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

/// Provider for Isar database instance
@Riverpod(keepAlive: true)
Future<Isar> isar(IsarRef ref) async {
  final isar = await IsarDatabaseService.initialize();

  // Cleanup when provider is disposed
  ref.onDispose(() {
    // Don't close immediately as other providers might need it
  });

  return isar;
}
