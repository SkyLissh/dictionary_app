import "package:flutter/material.dart";
import "package:riverpod/riverpod.dart";
import "package:hive/hive.dart";

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
    (ref) => ThemeNotifier(ThemeMode.system));

class ThemeNotifier extends StateNotifier<ThemeMode> {
  static final _settings = Hive.box("settings");

  ThemeNotifier(ThemeMode state) : super(_init());

  static ThemeMode _init() {
    final bool? darkMode = _settings.get("darkMode");

    if (darkMode == null) return ThemeMode.system;

    return darkMode ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> toggleTheme({required bool dark}) async {
    state = dark ? ThemeMode.dark : ThemeMode.light;
    await _settings.put("darkMode", dark);
  }
}
