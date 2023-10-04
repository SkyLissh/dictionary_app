import "package:flutter/material.dart";

import "package:dictionary/constants/constants.dart";

class ColorSchemes {
  static ColorScheme get light {
    return const ColorScheme(
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
    );
  }

  static ColorScheme get dark {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Palette.purple700,
      onPrimary: Palette.zinc50,
      secondary: Palette.purple950,
      onSecondary: Palette.zinc50,
      error: Palette.red500,
      onError: Palette.zinc50,
      background: Palette.zinc900,
      onBackground: Palette.zinc50,
      surface: Palette.zinc800,
      onSurface: Palette.zinc50,
    );
  }
}
