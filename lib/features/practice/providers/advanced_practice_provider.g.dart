// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_practice_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$advancedPracticeSessionHash() =>
    r'b3fc2304f7368d2beab512d153724cf57f8cab08';

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

abstract class _$AdvancedPracticeSession
    extends BuildlessAutoDisposeAsyncNotifier<AdvancedPracticeState> {
  late final String lessonId;

  Future<AdvancedPracticeState> build(
    String lessonId,
  );
}

/// See also [AdvancedPracticeSession].
@ProviderFor(AdvancedPracticeSession)
const advancedPracticeSessionProvider = AdvancedPracticeSessionFamily();

/// See also [AdvancedPracticeSession].
class AdvancedPracticeSessionFamily
    extends Family<AsyncValue<AdvancedPracticeState>> {
  /// See also [AdvancedPracticeSession].
  const AdvancedPracticeSessionFamily();

  /// See also [AdvancedPracticeSession].
  AdvancedPracticeSessionProvider call(
    String lessonId,
  ) {
    return AdvancedPracticeSessionProvider(
      lessonId,
    );
  }

  @override
  AdvancedPracticeSessionProvider getProviderOverride(
    covariant AdvancedPracticeSessionProvider provider,
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
  String? get name => r'advancedPracticeSessionProvider';
}

/// See also [AdvancedPracticeSession].
class AdvancedPracticeSessionProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AdvancedPracticeSession,
        AdvancedPracticeState> {
  /// See also [AdvancedPracticeSession].
  AdvancedPracticeSessionProvider(
    this.lessonId,
  ) : super.internal(
          () => AdvancedPracticeSession()..lessonId = lessonId,
          from: advancedPracticeSessionProvider,
          name: r'advancedPracticeSessionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$advancedPracticeSessionHash,
          dependencies: AdvancedPracticeSessionFamily._dependencies,
          allTransitiveDependencies:
              AdvancedPracticeSessionFamily._allTransitiveDependencies,
        );

  final String lessonId;

  @override
  bool operator ==(Object other) {
    return other is AdvancedPracticeSessionProvider &&
        other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<AdvancedPracticeState> runNotifierBuild(
    covariant AdvancedPracticeSession notifier,
  ) {
    return notifier.build(
      lessonId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
