import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'text_theme.dart';
import 'theme_values.dart';

/// [ThemeData] Light Mode
/// This is default mode
ThemeData getLightTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.actor().fontFamily,
    backgroundColor: lightPrimaryBg,
    scaffoldBackgroundColor: lightSecondaryBg,
    textTheme: getTextTheme().copyWith(
      displaySmall:
          getTextTheme().displaySmall?.copyWith(color: lightPrimaryTxt),
      displayMedium:
          getTextTheme().displayMedium?.copyWith(color: lightPrimaryTxt),
      displayLarge:
          getTextTheme().displayLarge?.copyWith(color: lightPrimaryTxt),
      headlineSmall:
          getTextTheme().headlineSmall?.copyWith(color: lightPrimaryTxt),
      headlineMedium:
          getTextTheme().headlineMedium?.copyWith(color: lightPrimaryTxt),
      headlineLarge:
          getTextTheme().headlineLarge?.copyWith(color: lightPrimaryTxt),
      titleSmall: getTextTheme().titleSmall?.copyWith(color: lightPrimaryTxt),
      titleMedium: getTextTheme().titleMedium?.copyWith(color: lightPrimaryTxt),
      titleLarge: getTextTheme().titleLarge?.copyWith(color: lightPrimaryTxt),
      bodySmall: getTextTheme().bodySmall?.copyWith(color: lightPrimaryTxt),
      bodyMedium: getTextTheme().bodyMedium?.copyWith(color: lightPrimaryTxt),
      bodyLarge: getTextTheme().bodyLarge?.copyWith(color: lightPrimaryTxt),
      labelSmall: getTextTheme().labelSmall?.copyWith(color: lightPrimaryTxt),
      labelMedium: getTextTheme().labelMedium?.copyWith(color: lightPrimaryTxt),
      labelLarge: getTextTheme().labelLarge?.copyWith(color: lightPrimaryTxt),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(lightSecondaryBg),
        textStyle: MaterialStatePropertyAll(
          getTextTheme()
              .headlineSmall
              ?.copyWith(color: colorPrimary, letterSpacing: 1),
        ),
        overlayColor: const MaterialStatePropertyAll(lightSecondaryBg),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(colorPrimary),
        textStyle: MaterialStatePropertyAll(
          getTextTheme()
              .headlineSmall
              ?.copyWith(color: lightPrimaryBg, letterSpacing: 1.15),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(lightPrimaryBg),
        side: const MaterialStatePropertyAll(
          BorderSide(color: colorPrimary, width: 1.5),
        ),
        overlayColor: MaterialStatePropertyAll(colorPrimary.withOpacity(0.25)),
        foregroundColor: const MaterialStatePropertyAll(colorPrimary),
        textStyle: MaterialStatePropertyAll(
          getTextTheme()
              .headlineSmall
              ?.copyWith(color: colorPrimary, letterSpacing: 1.15),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: lightSecondaryTxt,
      suffixIconColor: lightSecondaryTxt,
    ),
    primarySwatch: const MaterialColor(
      colorPrimaryInt,
      {
        50: Color(colorPrimaryInt),
        100: Color(colorPrimaryInt),
        200: Color(colorPrimaryInt),
        300: Color(colorPrimaryInt),
        400: Color(colorPrimaryInt),
        500: Color(colorPrimaryInt),
        600: Color(colorPrimaryInt),
        700: Color(colorPrimaryInt),
        800: Color(colorPrimaryInt),
        900: Color(colorPrimaryInt),
      },
    ),
  );
}

/// [ThemeData] Dark Mode
/// This is theme for dark mode
ThemeData getDarkTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.actor().fontFamily,
    textTheme: getTextTheme().copyWith(
      displaySmall:
          getTextTheme().displaySmall?.copyWith(color: darkPrimaryTxt),
      displayMedium:
          getTextTheme().displayMedium?.copyWith(color: darkPrimaryTxt),
      displayLarge:
          getTextTheme().displayLarge?.copyWith(color: darkPrimaryTxt),
      headlineSmall:
          getTextTheme().headlineSmall?.copyWith(color: darkPrimaryTxt),
      headlineMedium:
          getTextTheme().headlineMedium?.copyWith(color: darkPrimaryTxt),
      headlineLarge:
          getTextTheme().headlineLarge?.copyWith(color: darkPrimaryTxt),
      titleSmall: getTextTheme().titleSmall?.copyWith(color: darkPrimaryTxt),
      titleMedium: getTextTheme().titleMedium?.copyWith(color: darkPrimaryTxt),
      titleLarge: getTextTheme().titleLarge?.copyWith(color: darkPrimaryTxt),
      bodySmall: getTextTheme().bodySmall?.copyWith(color: darkPrimaryTxt),
      bodyMedium: getTextTheme().bodyMedium?.copyWith(color: darkPrimaryTxt),
      bodyLarge: getTextTheme().bodyLarge?.copyWith(color: darkPrimaryTxt),
      labelSmall: getTextTheme().labelSmall?.copyWith(color: darkPrimaryTxt),
      labelMedium: getTextTheme().labelMedium?.copyWith(color: darkPrimaryTxt),
      labelLarge: getTextTheme().labelLarge?.copyWith(color: darkPrimaryTxt),
    ),
    backgroundColor: darkPrimaryBg,
    scaffoldBackgroundColor: darkSecondaryBg,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(darkSecondaryBg),
        textStyle: MaterialStatePropertyAll(
          getTextTheme().headlineSmall?.copyWith(letterSpacing: 1),
        ),
        overlayColor: const MaterialStatePropertyAll(darkSecondaryBg),
        foregroundColor: const MaterialStatePropertyAll(colorPrimary),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(colorPrimary),
        textStyle: MaterialStatePropertyAll(
          getTextTheme().headlineSmall?.copyWith(letterSpacing: 1.15),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(darkSecondaryBg),
        side: const MaterialStatePropertyAll(
          BorderSide(color: darkPrimaryTxt, width: 1.5),
        ),
        overlayColor: const MaterialStatePropertyAll(colorPrimary),
        foregroundColor: const MaterialStatePropertyAll(darkPrimaryTxt),
        textStyle: MaterialStatePropertyAll(
          getTextTheme().headlineSmall?.copyWith(letterSpacing: 1.15),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: darkPrimaryTxt,
      suffixIconColor: darkPrimaryTxt,
    ),
    primarySwatch: const MaterialColor(
      colorPrimaryInt,
      {
        50: Color(colorPrimaryInt),
        100: Color(colorPrimaryInt),
        200: Color(colorPrimaryInt),
        300: Color(colorPrimaryInt),
        400: Color(colorPrimaryInt),
        500: Color(colorPrimaryInt),
        600: Color(colorPrimaryInt),
        700: Color(colorPrimaryInt),
        800: Color(colorPrimaryInt),
        900: Color(colorPrimaryInt),
      },
    ),
  );
}
