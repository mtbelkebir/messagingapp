import 'package:flutter/material.dart';

class MessagingTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        brightness: Brightness.light,
        fontFamily: "PlusJakartaSans",
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: TextStyle(fontSize: 12.0, height: 18.0),
          bodyMedium: TextStyle(
            height: 12.0,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(fontSize: 14.0),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF005CBA),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color(0xFFD7E3FF),
          onPrimaryContainer: Color(0xFF001B3F),
          secondary: Color(0xFF2B5EA7),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color(0xFFD7E3FF),
          onSecondaryContainer: Color(0xFF001B3E),
          tertiary: Color(0xFF275EA7),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xFFD6E3FF),
          onTertiaryContainer: Color(0xFF001B3D),
          error: Color(0xFFBA1A1A),
          errorContainer: Color(0xFFFFDAD6),
          onError: Color(0xFFFFFFFF),
          onErrorContainer: Color(0xFF410002),
          background: Color(0xFFF8FDFF),
          onBackground: Color(0xFF001F25),
          surface: Color(0xFFF8FDFF),
          onSurface: Color(0xFF001F25),
          surfaceVariant: Color(0xFFE0E2EC),
          onSurfaceVariant: Color(0xFF44474E),
          outline: Color(0xFF74777F),
          onInverseSurface: Color(0xFFD6F6FF),
          inverseSurface: Color(0xFF00363F),
          inversePrimary: Color(0xFFABC7FF),
          shadow: Color(0xFF000000),
          surfaceTint: Color(0xFF005CBA),
          outlineVariant: Color(0xFFC4C6D0),
          scrim: Color(0xFF000000),
        ));
  }
}
