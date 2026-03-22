# Gunla Baja Flutter - AI Agent Instructions

A Flutter app for learning Nepali traditional drum (gunla baja) patterns with offline-first architecture.

## Architecture Overview

This project follows **Clean Architecture with Feature-First organization**:

- **lib/core/**: Cross-cutting concerns (database, auth, routing, sync)
- **lib/features/**: Feature modules (lessons, practice, admin) with `presentation/`, `providers/`, `domain/`, `data/` subfolders
- **lib/data/**: Shared data layer with `models/`, `repositories/`, `local_db/`
- **lib/domain/**: Domain entities that bridge data models and UI

**Key Pattern**: Features own their presentation and providers. Data layer (repositories/models) is shared across features.

## State Management: Riverpod with Code Generation

Use **riverpod_annotation** with `@riverpod` decorator for all providers:

```dart
@riverpod
Future<MyService> myService(MyServiceRef ref) async {
  final dependency = await ref.watch(dependencyProvider.future);
  return MyService(dependency);
}
```

**Conventions**:

- Always use code generation (`part 'file.g.dart'`)
- Async providers return `Future<T>` or `Stream<T>`, watch with `.future`
- Use `@Riverpod(keepAlive: true)` for singletons (database, Supabase client)
- Provider names match function names, generated with `Provider` suffix

## Database: Isar with Freezed Models

All data models use **Freezed + Isar annotations**:

```dart
@freezed
@Collection(ignore: {'copyWith'})
class MyModel with _$MyModel {
  const MyModel._();

  const factory MyModel({
    @JsonKey(name: 'id') required String id,
    // fields match Supabase column names
  }) = _MyModel;

  @override
  Id get isarId => fastHash(id); // Use fastHash for String IDs

  factory MyModel.fromJson(Map<String, dynamic> json) => _$MyModelFromJson(json);
}
```

**Critical Details**:

- Models live in `lib/data/models/`, generate 3 files: `.freezed.dart`, `.g.dart`, and base file
- Use `@JsonKey(name: 'db_column')` to match Supabase snake_case
- Repositories in `lib/data/repositories/` handle all database operations
- Run `dart run build_runner build` after model changes

## Offline-First with Supabase Sync

**Initialization Flow** (see `lib/core/providers/initialization_provider.dart`):

1. Initialize Isar database
2. Initialize Supabase client
3. `SyncService.performInitialSync()` downloads lessons/boles, applies user progress

**Sync Logic** (`lib/core/services/sync_service.dart`):

- `syncLessons()`: Download published lessons + their boles from Supabase
- `uploadUserProgress()`: Push completion status to Supabase (silently fails offline)
- Local progress always saved first; sync happens in background

**Authentication**: Optional - app works offline anonymously. Auth unlocks cloud sync.

## Navigation: go_router with Riverpod

Router defined in `lib/core/router/app_router.dart` as Riverpod provider:

```dart
@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(routes: [...]);
}
```

Routes: `/` (lessons list), `/lesson/:id` (practice), `/admin` (admin panel)

## Domain Layer Pattern

Entities in `lib/domain/entities/` provide business logic methods on top of data models:

```dart
class LessonEntity {
  // ... fields from LessonModel
  double get progressPercentage => (completedBoles / totalBoles) * 100;

  factory LessonEntity.fromModel(LessonModel model) { ... }
}
```

**When to use**: Complex computed properties, business rules, UI-specific transformations.

## Code Generation Workflow

After editing models, providers, or routes:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Watch mode for continuous generation:

```bash
dart run build_runner watch
```

## UI Patterns

- **Nepali Text**: Use `NotoSansDevanagari` font (configured in `pubspec.yaml`)
- **Async UI**: Always use `.when(data:, loading:, error:)` for `AsyncValue`
- **Real-time Updates**: Repositories expose `Stream<T>` via Isar `.watch()` - providers consume with `async*`
- **Animations**: Use `flutter_animate` package for micro-interactions

## Testing Conventions

- First lesson auto-unlocks for offline users
- Completing a lesson unlocks the next level's first lesson
- Use Admin panel (`/admin`) to reset progress or unlock lessons manually

## Common Tasks

**Add new feature**: Create `lib/features/feature_name/` with `presentation/`, `providers/` subfolders. Add route in `app_router.dart`.

**New data model**: Create in `lib/data/models/`, add schema to `IsarDatabaseService.initialize()`, create repository in `lib/data/repositories/`.

**Supabase sync**: Modify `sync_service.dart` to handle new tables. Match JSON keys to Supabase columns with `@JsonKey(name:)`.

## Critical Files to Understand

- `lib/main.dart`: App initialization with async loading state
- `lib/core/database/isar_database.dart`: Database setup and schemas
- `lib/core/services/sync_service.dart`: Offline-first sync orchestration
- `lib/features/lessons/providers/lesson_provider.dart`: Lesson state + completion logic
- `lib/features/practice/providers/practice_provider.dart`: Practice session state machine
