import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/auth/auth_store.dart';
import '../../domain/core/failures.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  final _authStore = Modular.get<AuthStore>();
  late String user;
  late double fontSize;

  @override
  void initState() {
    super.initState();
    _authStore.getUserLogged();
    fontSize = 16;
  }

  @override
  Widget build(BuildContext context) => ScopedBuilder<AuthStore, Failure, String>(
        store: _authStore,
        onError: (_, __) => const SizedBox.shrink(),
        onState: (_, user) => user.isNotEmpty
            ? Row(
                children: [
                  Text(
                    'Bem vindo ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: fontSize,
                    ),
                  ),
                  Text(
                    user,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink(),
      );
}
