import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/providers/initialization_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    const ProviderScope(
      child: GunlaBajaApp(),
    ),
  );
}

class GunlaBajaApp extends ConsumerWidget {
  const GunlaBajaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initAsync = ref.watch(appInitializationProvider);
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'गुँला बाजा',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: router,
      builder: (context, child) {
        return initAsync.when(
          data: (_) => child ?? const SizedBox(),
          loading: () => const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text(
                      'गुँला बाजा लोड हुँदैछ...',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          error: (error, stack) => MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    const Text('एप सुरु गर्न असफल'),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(appInitializationProvider.notifier).retry();
                      },
                      child: const Text('पुन: प्रयास गर्नुहोस्'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}