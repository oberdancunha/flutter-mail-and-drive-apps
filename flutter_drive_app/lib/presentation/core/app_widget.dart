import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/modules/theme/presentation/design_system_module.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DesignSystemModule(
        title: 'Drive App',
        initialRoute: Modular.initialRoute,
      );
}
