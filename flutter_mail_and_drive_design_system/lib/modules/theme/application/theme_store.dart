import 'dart:ffi';

import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../configuration/themes.dart';
import '../domain/theme/i_theme_repository.dart';
import '../infrastructure/theme_configure/theme_configure_repository.dart';
import 'theme_state.dart';

class ThemeStore extends StreamStore<Void, ThemeState> {
  final IThemeRepository themeRepository;

  ThemeStore({required this.themeRepository}) : super(ThemeState.initial());

  Future<void> getTheme() async {
    setLoading(true);
    (await themeRepository.getTheme()).fold(
      (_) => null,
      (themeSourceId) {
        final themeConfigureSource = themesList.elementAt(themeSourceId);
        final themeConfigureRepository = ThemeConfigureRepository(
          themeConfigureSource: themeConfigureSource,
        );
        final theme = themeConfigureRepository.getTheme();
        update(
          state.copyWith(
            theme: theme,
            themeSourceId: themeSourceId,
          ),
        );
      },
    );
    update(
      state.copyWith(
        wasSearched: true,
      ),
    );
    setLoading(false);
  }

  Future<void> addOrUpdateTheme() async {
    setLoading(true);
    final themeSourceId = state.themeSourceId == 0 ? 1 : 0;
    await themeRepository.addOrUpdateTheme(themeSourceId);
    final themeConfigureSource = themesList.elementAt(themeSourceId);
    final themeConfigureRepository = ThemeConfigureRepository(
      themeConfigureSource: themeConfigureSource,
    );
    final theme = themeConfigureRepository.getTheme();
    update(
      state.copyWith(
        theme: theme,
        themeSourceId: themeSourceId,
      ),
    );
    setLoading(false);
  }
}
