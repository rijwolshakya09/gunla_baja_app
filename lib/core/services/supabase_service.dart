import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supabase_service.g.dart';

/// Initialize Supabase
Future<void> initializeSupabase() async {
  await Supabase.initialize(
    url: 'https://uqvoxtnjttdyyhuxddmr.supabase.co', // Replace with your URL
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVxdm94dG5qdHRkeXlodXhkZG1yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzOTgxMzYsImV4cCI6MjA4MTk3NDEzNn0.sIjqZ40XYUserBOlQPBxJqMdLmRFh9DDWyK8m_rw_-w', // Replace with your anon key
  );
}

/// Supabase client provider
@Riverpod(keepAlive: true)
SupabaseClient supabase(SupabaseRef ref) {
  return Supabase.instance.client;
}

/// Auth state provider
@riverpod
Stream<AuthState> authState(AuthStateRef ref) {
  final supabase = ref.watch(supabaseProvider);
  return supabase.auth.onAuthStateChange;
}

/// Current user provider
@riverpod
User? currentUser(CurrentUserRef ref) {
  final supabase = ref.watch(supabaseProvider);
  return supabase.auth.currentUser;
}
