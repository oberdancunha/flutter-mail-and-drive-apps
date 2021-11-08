import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/theme/i_theme_repository.dart';
import 'theme_data_source.dart';

class ThemeRepository implements IThemeRepository {
  final ThemeDataSource themeDataSource;

  ThemeRepository({
    required this.themeDataSource,
  });

  @override
  Future<void> addOrUpdateTheme(int themeIndex) async {
    await themeDataSource.addOrUpdateTheme(themeIndex);

    return;
  }

  @override
  Future<Either<void, int>> getTheme() => themeDataSource.getTheme();
}
