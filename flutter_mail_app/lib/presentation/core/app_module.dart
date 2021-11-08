import 'package:flutter_mail_and_drive_design_system/modules/theme/presentation/design_system_body.dart';
import 'package:flutter_mail_and_drive_login/config/inital_load_binds.dart';
import 'package:flutter_mail_and_drive_login/presentation/login/login_module.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../guards/auth/auth_guard.dart';
import '../home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    ...loginAppInitialLoadBinds,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const DesignSystemBody(
        pageRoute: '/home/',
      ),
      children: [
        ModuleRoute(
          '/login',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
          transition: TransitionType.fadeIn,
          guards: [AuthGuard()],
        ),
      ],
    ),
  ];
}
