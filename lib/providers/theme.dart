import "package:flutter/material.dart";
import "package:riverpod/riverpod.dart";

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
    (ref) => ThemeNotifier(ThemeMode.system));

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier(ThemeMode state) : super(state);

  void toggleTheme({required bool dark}) {
    state = dark ? ThemeMode.dark : ThemeMode.light;
  }
}
