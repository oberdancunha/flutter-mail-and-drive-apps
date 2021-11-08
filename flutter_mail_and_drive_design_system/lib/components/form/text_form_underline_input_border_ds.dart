import 'package:flutter/material.dart';

InputDecorationTheme getUnderlineInputBorderDS(BuildContext context) =>
    const InputDecorationTheme().copyWith(
      border: UnderlineInputBorder(
        borderSide: Theme.of(context).inputDecorationTheme.border!.borderSide,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: Theme.of(context).inputDecorationTheme.focusedBorder!.borderSide,
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: Theme.of(context).inputDecorationTheme.focusedErrorBorder!.borderSide,
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: Theme.of(context).inputDecorationTheme.errorBorder!.borderSide,
      ),
    );
