import 'package:flutter/material.dart';

import '../../domain/theme_configure/i_theme_configure_repository.dart';
import 'theme_configure_source.dart';

class ThemeConfigureRepository implements IThemeConfigureRepository {
  final ThemeConfigureSource themeConfigureSource;

  ThemeConfigureRepository({
    required this.themeConfigureSource,
  });

  @override
  ThemeData getTheme() => themeConfigureSource.getThemeData().copyWith(
        brightness: themeConfigureSource.getBrightness(),
        elevatedButtonTheme: themeConfigureSource.getElevatedButtonTheme(),
        primaryIconTheme: themeConfigureSource.getPrimaryIconTheme(),
        inputDecorationTheme: themeConfigureSource.getInputDecorationTheme(),
        colorScheme: themeConfigureSource.getColorScheme(),
        dialogTheme: themeConfigureSource.getDialogTheme(),
        snackBarTheme: themeConfigureSource.getSnackBarTheme(),
        buttonTheme: themeConfigureSource.getButtonTheme(),
        dataTableTheme: themeConfigureSource.getDataTableTheme(),
        dividerTheme: themeConfigureSource.getDividerTheme(),
        splashColor: themeConfigureSource.getSplashColorTheme(),
        highlightColor: themeConfigureSource.getHighlightColorTheme(),
        scrollbarTheme: themeConfigureSource.getScrollbarTheme(),
        bottomSheetTheme: themeConfigureSource.getBottomSheetTheme(),
      );
}
