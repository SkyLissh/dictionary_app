import "package:flutter/material.dart";

import "package:dictionary/constants/constants.dart";

class CustomInputTheme {
  static InputDecorationTheme get _theme {
    return const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: Shapes.mediumBorder,
      ),
      filled: true,
    );
  }

  static InputDecorationTheme get light {
    return _theme.copyWith(fillColor: Palette.zinc200);
  }

  static InputDecorationTheme get dark {
    return _theme.copyWith(fillColor: Palette.zinc800);
  }
}
