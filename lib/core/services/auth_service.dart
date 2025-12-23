import 'package:gunla_baja_flutter/core/services/supabase_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_service.g.dart';

@riverpod
AuthService authService(AuthServiceRef ref) {
  final supabase = ref.watch(supabaseProvider);
  return AuthService(supabase);
}

class AuthService {
  final SupabaseClient _supabase;

  AuthService(this._supabase);

  /// Get current user
  User? get currentUser => _supabase.auth.currentUser;

  /// Sign in with email and password
  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      throw Exception('Sign in failed: $e');
    }
  }

  /// Sign up with email and password
  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
    String? displayName,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'display_name': displayName},
      );

      // Create user profile
      if (response.user != null) {
        await _supabase.from('user_profiles').insert({
          'id': response.user!.id,
          'email': email,
          'display_name': displayName,
        });
      }

      return response;
    } catch (e) {
      throw Exception('Sign up failed: $e');
    }
  }

  /// Sign in anonymously (for offline use)
  Future<void> signInAnonymously() async {
    // For offline-only mode, we can skip authentication
    // Just mark as "anonymous" user
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      await _supabase.auth.signOut();
    } catch (e) {
      throw Exception('Sign out failed: $e');
    }
  }

  /// Reset password
  Future<void> resetPassword(String email) async {
    try {
      await _supabase.auth.resetPasswordForEmail(email);
    } catch (e) {
      throw Exception('Password reset failed: $e');
    }
  }

  /// Update user profile
  Future<void> updateProfile({String? displayName, String? avatarUrl}) async {
    try {
      final userId = currentUser?.id;
      if (userId == null) return;

      await _supabase
          .from('user_profiles')
          .update({
            if (displayName != null) 'display_name': displayName,
            if (avatarUrl != null) 'avatar_url': avatarUrl,
          })
          .eq('id', userId);
    } catch (e) {
      throw Exception('Profile update failed: $e');
    }
  }
}
