import 'package:flutter/material.dart';
import '../infrastructure/theme_configure/theme_configure_source.dart';

class DarkThemeConfigureSource implements ThemeConfigureSource {
  @override
  ThemeData getThemeData() => ThemeData(
        brightness: getBrightness(),
        indicatorColor: const Color(0xFF898989),
        dialogBackgroundColor: const Color(0xFF898989),
        secondaryHeaderColor: const Color(0xFFE05750),
        fontFamily: 'OpenSans',
        cardColor: Colors.black,
      );

  @override
  Brightness getBrightness() => Brightness.dark;

  @override
  ElevatedButtonThemeData getElevatedButtonTheme() => ElevatedButtonThemeData(
        style: const ButtonStyle().copyWith(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(const Color(0xFF898989)),
          textStyle: MaterialStateProperty.all(
            const TextStyle().copyWith(
              fontWeight: FontWeight.bold,
              foreground: Paint()..color = Colors.black,
              fontSize: 18,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      );

  @override
  IconThemeData getPrimaryIconTheme() => const IconThemeData().copyWith(
        color: Colors.white,
      );

  @override
  InputDecorationTheme getInputDecorationTheme() => const InputDecorationTheme().copyWith(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF898989),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFECC371),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFECC371),
          ),
        ),
        labelStyle: const TextStyle(
          fontSize: 20,
        ),
        errorMaxLines: 3,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFECC371),
          ),
        ),
        errorStyle: const TextStyle(
          fontSize: 17,
          color: Color(0xFFECC371),
        ),
      );

  @override
  ColorScheme getColorScheme() => ColorScheme.fromSwatch(
        primarySwatch: Colors.yellow,
      );

  @override
  DialogTheme getDialogTheme() => const DialogTheme().copyWith(
        backgroundColor: const Color(0xFFE05750),
        elevation: 5,
      );

  @override
  SnackBarThemeData getSnackBarTheme() => const SnackBarThemeData().copyWith(
        backgroundColor: const Color(0xFFECC371),
        contentTextStyle: const TextStyle().copyWith(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      );

  @override
  ButtonThemeData getButtonTheme() => const ButtonThemeData().copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      );

  @override
  DataTableThemeData getDataTableTheme() => const DataTableThemeData().copyWith(
        dividerThickness: 2,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
        ),
      );

  @override
  DividerThemeData getDividerTheme() => const DividerThemeData().copyWith(
        space: 1,
        thickness: 0,
        color: Colors.grey.shade900,
      );

  @override
  Color getSplashColorTheme() => Colors.transparent;

  @override
  Color getHighlightColorTheme() => Colors.transparent;

  @override
  ScrollbarThemeData getScrollbarTheme() => const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(const Color(0xFFECC371)),
        isAlwaysShown: true,
      );

  @override
  BottomSheetThemeData getBottomSheetTheme() => const BottomSheetThemeData().copyWith(
        backgroundColor: Colors.transparent,
        modalBackgroundColor: const Color(0xFF898989),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      );
}
