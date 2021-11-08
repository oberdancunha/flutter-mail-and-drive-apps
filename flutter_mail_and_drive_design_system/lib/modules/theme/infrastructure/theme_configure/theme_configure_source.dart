import 'package:flutter/material.dart';

abstract class ThemeConfigureSource {
  ThemeData getThemeData();
  Brightness getBrightness();
  ElevatedButtonThemeData getElevatedButtonTheme();
  IconThemeData getPrimaryIconTheme();
  InputDecorationTheme getInputDecorationTheme();
  ColorScheme getColorScheme();
  DialogTheme getDialogTheme();
  SnackBarThemeData getSnackBarTheme();
  ButtonThemeData getButtonTheme();
  DataTableThemeData getDataTableTheme();
  DividerThemeData getDividerTheme();
  Color getSplashColorTheme();
  Color getHighlightColorTheme();
  ScrollbarThemeData getScrollbarTheme();
  BottomSheetThemeData getBottomSheetTheme();
}
