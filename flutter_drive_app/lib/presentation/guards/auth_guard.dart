import 'dart:async';

import 'package:flutter_mail_and_drive_login/application/auth/auth_store.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: "/login/home");

  @override
  FutureOr<bool> canActivate(String path, ModularRoute route) async {
    final isLogged = await Modular.get<AuthStore>().isLogged();

    return isLogged;
  }
}
