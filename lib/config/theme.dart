import 'package:flutter/material.dart';
import 'colors.dart';

// 🌞 Light Theme
var lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: LBgColor,
  colorScheme: const ColorScheme.light(
    background: LBgColor,
    surface: LBgColor,
    primary: LPrimaryColor,
    onBackground: LFontColor,
    onSurface: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor,
    outline: Color(0xff8C8C8C),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: LFontColor,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w600,
      color: LLableColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: LFontColor,
    ),
  ),
);

// 🌙 Dark Theme
var darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: DBgColor,
  colorScheme: const ColorScheme.dark(
    background: DBgColor,
    surface: DBgColor,
    primary: DPrimaryColor,
    onBackground: DFontColor,
    onSurface: DFontColor,
    primaryContainer: DDivColor,
    onPrimaryContainer: DFontColor,
    onSecondaryContainer: DLableColor,
    outline: Color(0xff8C8C8C),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: DFontColor,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w600,
      color: DLableColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: DFontColor,
    ),
  ),
);
