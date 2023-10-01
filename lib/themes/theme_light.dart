import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "package:dictionary/constants/constants.dart";

import "widgets/widgets.dart";

class CustomTheme {
  static ThemeData get theme {
    final theme = ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Palette.purple700,
        onPrimary: Palette.zinc50,
        secondary: Palette.purple200,
        onSecondary: Palette.zinc50,
        error: Palette.red500,
        onError: Palette.zinc50,
        background: Palette.zinc50,
        onBackground: Palette.zinc950,
        surface: Palette.zinc200,
        onSurface: Palette.zinc950,
      ),
      inputDecorationTheme: CustomInputTheme.light,
    );

    return theme.copyWith(
      textTheme: GoogleFonts.merriweatherTextTheme(theme.textTheme),
    );
  }
}
