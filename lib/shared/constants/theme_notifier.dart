// lib/providers/theme_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifierProvider extends StateNotifier<bool> {
  ThemeNotifierProvider() : super(true); // Default to light theme

  void toggleTheme() {
    state = !state;
  }

  final themeProvider =
      StateNotifierProvider<ThemeNotifierProvider, bool>((ref) {
    return ThemeNotifierProvider();
  });
}
