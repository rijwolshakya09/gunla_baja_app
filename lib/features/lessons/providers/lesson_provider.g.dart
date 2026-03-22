// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lessonsHash() => r'd389004e4cccd2dc951b9b44fe3f16947cf88685';

/// Provider to watch all lessons
///
/// Copied from [lessons].
@ProviderFor(lessons)
final lessonsProvider = AutoDisposeStreamProvider<List<LessonEntity>>.internal(
  lessons,
  name: r'lessonsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lessonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LessonsRef = AutoDisposeStreamProviderRef<List<LessonEntity>>;
String _$lessonHash() => r'3afbec0e8a3828388398b12632d4778d8ee31cd8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef LessonRef = AutoDisposeStreamProviderRef<LessonEntity?>;

/// Provider to watch specific lesson
///
/// Copied from [lesson].
@ProviderFor(lesson)
const lessonProvider = LessonFamily();

/// Provider to watch specific lesson
///
/// Copied from [lesson].
class LessonFamily extends Family<AsyncValue<LessonEntity?>> {
  /// Provider to watch specific lesson
  ///
  /// Copied from [lesson].
  const LessonFamily();

  /// Provider to watch specific lesson
  ///
  /// Copied from [lesson].
  LessonProvider call(
    String id,
  ) {
    return LessonProvider(
      id,
    );
  }

  @override
  LessonProvider getProviderOverride(
    covariant LessonProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'lessonProvider';
}

/// Provider to watch specific lesson
///
/// Copied from [lesson].
class LessonProvider extends AutoDisposeStreamProvider<LessonEntity?> {
  /// Provider to watch specific lesson
  ///
  /// Copied from [lesson].
  LessonProvider(
    this.id,
  ) : super.internal(
          (ref) => lesson(
            ref,
            id,
          ),
          from: lessonProvider,
          name: r'lessonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lessonHash,
          dependencies: LessonFamily._dependencies,
          allTransitiveDependencies: LessonFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is LessonProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$lessonActionsHash() => r'b3d22a04f95cdf00ab7ffc06a2f2bd5613bac2c6';

/// Provider for lesson actions
///
/// Copied from [LessonActions].
@ProviderFor(LessonActions)
final lessonActionsProvider =
    AutoDisposeNotifierProvider<LessonActions, void>.internal(
  LessonActions.new,
  name: r'lessonActionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lessonActionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LessonActions = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
