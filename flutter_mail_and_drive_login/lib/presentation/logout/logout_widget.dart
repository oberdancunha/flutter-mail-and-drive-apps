import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/button/button_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/auth/auth_store.dart';
import '../../application/auth_logout/auth_logout_store.dart';

class LogoutWidget extends StatefulWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  State<LogoutWidget> createState() => _LogoutWidgetState();
}

class _LogoutWidgetState extends State<LogoutWidget> {
  final _authLogoutStore = Modular.get<AuthLogoutStore>();
  final _authStore = Modular.get<AuthStore>();

  @override
  void initState() {
    super.initState();
    _authLogoutStore.observer(
      onState: (state) {
        state.logout.map(
          (logout) => logout.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 1500),
                content: Text(
                  failure.maybeWhen(
                    removeAuthenticationError: (_) =>
                        'Houve um erro ao sair da aplicação. Por favor, tente novamente.',
                    orElse: () => '',
                  ),
                ),
              ),
            ),
            (_) async {
              await _authStore.getUserLogged();
              Modular.to.navigate('/login/home');
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 25,
        child: ButtonDS(
          label: 'Sair',
          onPressed: _authLogoutStore.logout,
        ),
      );
}
