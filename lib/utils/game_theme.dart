import 'package:flutter/material.dart';

class GameTheme {
  static ThemeData getTheme(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.light:
        return ThemeData(
          colorScheme: lightColorScheme,
        );
      case ThemeType.dark:
        return ThemeData(
          colorScheme: darkColorScheme,
        );

      default:
        return ThemeData(
          colorScheme: const ColorScheme.light(),
        );
    }
  }
}

enum ThemeType {
  light,
  dark,
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF684FA4),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE9DDFF),
  onPrimaryContainer: Color(0xFF23005C),
  secondary: Color(0xFF7D5800),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDEA9),
  onSecondaryContainer: Color(0xFF271900),
  tertiary: Color(0xFF006A66),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF70F7EF),
  onTertiaryContainer: Color(0xFF00201E),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF1C1B1E),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF1C1B1E),
  surfaceVariant: Color(0xFFE7E0EB),
  onSurfaceVariant: Color(0xFF49454E),
  outline: Color(0xFF7A757F),
  onInverseSurface: Color(0xFFF5EFF4),
  inverseSurface: Color(0xFF323033),
  inversePrimary: Color(0xFFD0BCFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF684FA4),
  outlineVariant: Color(0xFFCAC4CF),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFD0BCFF),
  onPrimary: Color(0xFF391E72),
  primaryContainer: Color(0xFF50378A),
  onPrimaryContainer: Color(0xFFE9DDFF),
  secondary: Color(0xFFFFBA26),
  onSecondary: Color(0xFF422D00),
  secondaryContainer: Color(0xFF5E4100),
  onSecondaryContainer: Color(0xFFFFDEA9),
  tertiary: Color(0xFF4EDAD3),
  onTertiary: Color(0xFF003735),
  tertiaryContainer: Color(0xFF00504D),
  onTertiaryContainer: Color(0xFF70F7EF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1C1B1E),
  onBackground: Color(0xFFE6E1E6),
  surface: Color(0xFF1C1B1E),
  onSurface: Color(0xFFE6E1E6),
  surfaceVariant: Color(0xFF49454E),
  onSurfaceVariant: Color(0xFFCAC4CF),
  outline: Color(0xFF948F99),
  onInverseSurface: Color(0xFF1C1B1E),
  inverseSurface: Color(0xFFE6E1E6),
  inversePrimary: Color(0xFF684FA4),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFD0BCFF),
  outlineVariant: Color(0xFF49454E),
  scrim: Color(0xFF000000),
);
