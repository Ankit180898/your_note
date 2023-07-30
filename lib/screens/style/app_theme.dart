import 'package:flutter/material.dart';

import 'color_schemes.dart';


class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );
}
