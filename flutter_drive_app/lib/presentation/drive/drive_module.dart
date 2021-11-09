import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'drive_page.dart';

class DriveModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const DrivePage(),
    ),
  ];
}
