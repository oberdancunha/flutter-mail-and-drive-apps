import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../infrastructure/theme/theme_data_source.dart';

class ThemeSharedPreferenceDataSource implements ThemeDataSource {
  late SharedPreferences sharedPreferences;
  static const key = 'theme';

  @override
  Future<void> addOrUpdateTheme(int themeIndex) async {
    await _init();
    await sharedPreferences.setInt(key, themeIndex);

    return;
  }

  @override
  Future<Either<void, int>> getTheme() async {
    await _init();
    final themeIndex = sharedPreferences.getInt(key);
    if (themeIndex != null) {
      return right(themeIndex);
    }

    return left(null);
  }

  Future<void> _init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
