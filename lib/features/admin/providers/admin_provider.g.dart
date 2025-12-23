// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminLessonsHash() => r'0a4bfa70c1a3c031fd843beacafdf39499d7d3df';

/// See also [AdminLessons].
@ProviderFor(AdminLessons)
final adminLessonsProvider = AutoDisposeAsyncNotifierProvider<AdminLessons,
    List<Map<String, dynamic>>>.internal(
  AdminLessons.new,
  name: r'adminLessonsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adminLessonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdminLessons = AutoDisposeAsyncNotifier<List<Map<String, dynamic>>>;
String _$adminServiceHash() => r'b3356d1044b0b257a208c6bf04cadc81988e0967';

/// See also [AdminService].
@ProviderFor(AdminService)
final adminServiceProvider =
    AutoDisposeNotifierProvider<AdminService, void>.internal(
  AdminService.new,
  name: r'adminServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adminServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdminService = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
