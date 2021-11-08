import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../infrastructure/theme_configure/theme_configure_source.dart';

class LightThemeConfigureSource implements ThemeConfigureSource {
  @override
  ThemeData getThemeData() => ThemeData(
        brightness: getBrightness(),
        indicatorColor: const Color(0xFFffffff),
        secondaryHeaderColor: const Color(0xFFECC371),
        fontFamily: 'OpenSans',
      );

  @override
  Brightness getBrightness() => Brightness.light;

  @override
  ElevatedButtonThemeData getElevatedButtonTheme() => ElevatedButtonThemeData(
        style: const ButtonStyle().copyWith(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          overlayColor: MaterialStateProperty.all(const Color(0xFF898989)),
          textStyle: MaterialStateProperty.all(
            const TextStyle().copyWith(
              foreground: Paint()..color = Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'OpenSans',
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      );

  @override
  IconThemeData getPrimaryIconTheme() => const IconThemeData().copyWith(
        color: Colors.black,
      );

  @override
  InputDecorationTheme getInputDecorationTheme() => const InputDecorationTheme().copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF898989),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFE05750),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFE05750),
          ),
        ),
        labelStyle: const TextStyle(
          fontSize: 20,
        ),
        errorMaxLines: 3,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFE05750),
          ),
        ),
        errorStyle: const TextStyle(
          fontSize: 17,
          color: Color(0xFFE05750),
        ),
      );

  @override
  ColorScheme getColorScheme() => ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
      );

  @override
  DialogTheme getDialogTheme() => const DialogTheme().copyWith(
        backgroundColor: const Color(0xFFECC371),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );

  @override
  SnackBarThemeData getSnackBarTheme() => const SnackBarThemeData().copyWith(
        backgroundColor: const Color(0xFFE05750),
        contentTextStyle: const TextStyle().copyWith(
          color: Colors.white,
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
        dividerThickness: 0,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
      );

  @override
  DividerThemeData getDividerTheme() => const DividerThemeData().copyWith(
        space: 1,
        thickness: 0,
        color: Colors.grey.shade400,
      );

  @override
  Color getSplashColorTheme() => Colors.transparent;

  @override
  Color getHighlightColorTheme() => Colors.transparent;

  @override
  ScrollbarThemeData getScrollbarTheme() => const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(const Color(0xFFE05750)),
        isAlwaysShown: true,
      );

  @override
  BottomSheetThemeData getBottomSheetTheme() => const BottomSheetThemeData().copyWith(
        backgroundColor: Colors.transparent,
        modalBackgroundColor: const Color(0xFFffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      );
}
