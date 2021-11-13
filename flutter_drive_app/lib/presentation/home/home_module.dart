import 'package:flutter_mail_and_drive_design_system/components/home/home_page_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../drive/drive_module.dart';
import '../drive/shared_module.dart';
import 'menu_tools/menu_tools_items.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => HomePageDS(
        image: 'assets/images/header.png',
        initialPage: 'drive',
        showCreate: false,
        menuToolsItems: menuToolsItems,
      ),
      children: [
        ModuleRoute(
          '/drive',
          module: DriveModule(),
        ),
        ModuleRoute(
          '/shared',
          module: SharedModule(),
        ),
      ],
    ),
  ];
}
