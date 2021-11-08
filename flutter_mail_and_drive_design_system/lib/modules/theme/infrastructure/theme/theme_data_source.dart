import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

abstract class ThemeDataSource {
  Future<Either<void, int>> getTheme();
  Future<void> addOrUpdateTheme(int themeIndex);
}
