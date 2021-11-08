import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../configuration/themes.dart';

part 'theme_state.freezed.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeData theme,
    required bool wasSearched,
    required int themeSourceId,
  }) = _ThemeState;

  factory ThemeState.initial() => ThemeState(
        theme: initialTheme(),
        wasSearched: false,
        themeSourceId: 0,
      );
}
