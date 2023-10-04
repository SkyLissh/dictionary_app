import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "colorschemes.dart";
import "widgets/widgets.dart";

class CustomTheme {
  static ThemeData get light => _theme();
  static ThemeData get dark => _theme(dark: true);

  static ThemeData _theme({bool dark = false}) {
    final theme = ThemeData(
      useMaterial3: true,
      colorScheme: dark ? ColorSchemes.dark : ColorSchemes.light,
      inputDecorationTheme:
          dark ? CustomInputTheme.dark : CustomInputTheme.light,
    );

    return theme.copyWith(
      textTheme: GoogleFonts.merriweatherTextTheme(theme.textTheme),
    );
  }
}
