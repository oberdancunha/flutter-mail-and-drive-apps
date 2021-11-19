import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/auth/auth_state.dart';
import '../../application/auth/auth_store.dart';
import '../../domain/core/failures.dart';
import '../logout/logout_widget.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  final _authStore = Modular.get<AuthStore>();
  late double _fontSize;

  @override
  void initState() {
    super.initState();
    _authStore.getUserLogged();
    _fontSize = 16;
  }

  @override
  Widget build(BuildContext context) => ScopedBuilder<AuthStore, Failure, AuthState>(
        store: _authStore,
        onError: (_, failure) => Text(
          failure!.maybeMap(
            notUserAuthenticationError: (_) => 'Erro ao identificar o usuário',
            orElse: () => '',
          ),
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: _fontSize,
          ),
        ),
        onState: (_, state) => state.isAuthenticationVerified
            ? Row(
                children: [
                  if (state.user.isNotEmpty)
                    Row(
                      children: [
                        Text(
                          'Bem vindo ',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: _fontSize,
                          ),
                        ),
                        Text(
                          state.user,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: _fontSize,
                          ),
                        ),
                      ],
                    )
                  else
                    Text(
                      'Usuário não identificado',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: _fontSize,
                      ),
                    ),
                  const SizedBox(width: 10),
                  const LogoutWidget(),
                ],
              )
            : const SizedBox.shrink(),
      );
}
