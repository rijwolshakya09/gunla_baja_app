// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lessonBolesHash() => r'ad7a8645bd8d97c18c246d8b433894cd9090ac7e';

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

typedef LessonBolesRef = AutoDisposeStreamProviderRef<List<BoleEntity>>;

/// Provider to watch boles for a lesson
///
/// Copied from [lessonBoles].
@ProviderFor(lessonBoles)
const lessonBolesProvider = LessonBolesFamily();

/// Provider to watch boles for a lesson
///
/// Copied from [lessonBoles].
class LessonBolesFamily extends Family<AsyncValue<List<BoleEntity>>> {
  /// Provider to watch boles for a lesson
  ///
  /// Copied from [lessonBoles].
  const LessonBolesFamily();

  /// Provider to watch boles for a lesson
  ///
  /// Copied from [lessonBoles].
  LessonBolesProvider call(
    String lessonId,
  ) {
    return LessonBolesProvider(
      lessonId,
    );
  }

  @override
  LessonBolesProvider getProviderOverride(
    covariant LessonBolesProvider provider,
  ) {
    return call(
      provider.lessonId,
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
  String? get name => r'lessonBolesProvider';
}

/// Provider to watch boles for a lesson
///
/// Copied from [lessonBoles].
class LessonBolesProvider extends AutoDisposeStreamProvider<List<BoleEntity>> {
  /// Provider to watch boles for a lesson
  ///
  /// Copied from [lessonBoles].
  LessonBolesProvider(
    this.lessonId,
  ) : super.internal(
          (ref) => lessonBoles(
            ref,
            lessonId,
          ),
          from: lessonBolesProvider,
          name: r'lessonBolesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lessonBolesHash,
          dependencies: LessonBolesFamily._dependencies,
          allTransitiveDependencies:
              LessonBolesFamily._allTransitiveDependencies,
        );

  final String lessonId;

  @override
  bool operator ==(Object other) {
    return other is LessonBolesProvider && other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$practiceSessionHash() => r'46f5b07ab1f986a4e799969655cf612422bea23b';

abstract class _$PracticeSession
    extends BuildlessAutoDisposeAsyncNotifier<PracticeState> {
  late final String lessonId;

  Future<PracticeState> build(
    String lessonId,
  );
}

/// Practice session controller
///
/// Copied from [PracticeSession].
@ProviderFor(PracticeSession)
const practiceSessionProvider = PracticeSessionFamily();

/// Practice session controller
///
/// Copied from [PracticeSession].
class PracticeSessionFamily extends Family<AsyncValue<PracticeState>> {
  /// Practice session controller
  ///
  /// Copied from [PracticeSession].
  const PracticeSessionFamily();

  /// Practice session controller
  ///
  /// Copied from [PracticeSession].
  PracticeSessionProvider call(
    String lessonId,
  ) {
    return PracticeSessionProvider(
      lessonId,
    );
  }

  @override
  PracticeSessionProvider getProviderOverride(
    covariant PracticeSessionProvider provider,
  ) {
    return call(
      provider.lessonId,
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
  String? get name => r'practiceSessionProvider';
}

/// Practice session controller
///
/// Copied from [PracticeSession].
class PracticeSessionProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PracticeSession, PracticeState> {
  /// Practice session controller
  ///
  /// Copied from [PracticeSession].
  PracticeSessionProvider(
    this.lessonId,
  ) : super.internal(
          () => PracticeSession()..lessonId = lessonId,
          from: practiceSessionProvider,
          name: r'practiceSessionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$practiceSessionHash,
          dependencies: PracticeSessionFamily._dependencies,
          allTransitiveDependencies:
              PracticeSessionFamily._allTransitiveDependencies,
        );

  final String lessonId;

  @override
  bool operator ==(Object other) {
    return other is PracticeSessionProvider && other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<PracticeState> runNotifierBuild(
    covariant PracticeSession notifier,
  ) {
    return notifier.build(
      lessonId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
