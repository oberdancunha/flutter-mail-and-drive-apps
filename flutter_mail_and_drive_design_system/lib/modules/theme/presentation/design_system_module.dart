import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../application/theme_store.dart';
import '../domain/theme/i_theme_repository.dart';
import '../external/theme/theme_shared_preference_data_source.dart';
import '../infrastructure/theme/theme_data_source.dart';
import '../infrastructure/theme/theme_repository.dart';
import 'design_system_page.dart';

class DesignSystemModule extends WidgetModule {
  final String title;
  final String initialRoute;

  DesignSystemModule({
    required this.title,
    required this.initialRoute,
  });

  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton<ThemeDataSource>(
          (i) => ThemeSharedPreferenceDataSource(),
        ),
        Bind.lazySingleton<IThemeRepository>((i) => ThemeRepository(themeDataSource: i())),
        Bind.lazySingleton((i) => ThemeStore(themeRepository: i())),
      ];

  @override
  Widget get view => DesignSystemPage(
        title: title,
        initialRoute: initialRoute,
      );
}
