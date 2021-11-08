import 'package:flutter/material.dart';
import '../infrastructure/theme_configure/theme_configure_repository.dart';

import '../infrastructure/theme_configure/theme_configure_source.dart';
import 'dark_theme_configure_source.dart';
import 'light_theme_configure_source.dart';

final List<ThemeConfigureSource> themesList = [
  LightThemeConfigureSource(),
  DarkThemeConfigureSource(),
];

ThemeData initialTheme() {
  final themeConfigureSource = themesList.elementAt(0);
  final themeConfigureRepository = ThemeConfigureRepository(
    themeConfigureSource: themeConfigureSource,
  );

  return themeConfigureRepository.getTheme();
}
