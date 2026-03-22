import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/presentation/splash_screen.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/providers/initialization_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: GunlaBajaApp()));
}

class GunlaBajaApp extends ConsumerStatefulWidget {
  const GunlaBajaApp({super.key});

  @override
  ConsumerState<GunlaBajaApp> createState() => _GunlaBajaAppState();
}

class _GunlaBajaAppState extends ConsumerState<GunlaBajaApp> {
  bool _showSplash = true;

  void _onSplashComplete() {
    setState(() {
      _showSplash = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Show splash screen first
    if (_showSplash) {
      return MaterialApp(
        title: 'गुँला बाजा',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(onComplete: _onSplashComplete),
      );
    }

    // After splash, show main app with initialization
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
