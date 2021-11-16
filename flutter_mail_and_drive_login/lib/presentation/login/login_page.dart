import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/functions/screen.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/auth/auth_service.dart';
import '../../application/login/login_store.dart';
import 'widgets/loading/message_loading_widget.dart';
import 'widgets/login_landscape_widget.dart';
import 'widgets/login_portrait_widget.dart';

class LoginPage extends StatefulWidget {
  final String afterLoginPageRoute;

  const LoginPage({
    required this.afterLoginPageRoute,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginStore = Modular.get<LoginStore>();
  final _authService = Modular.get<AuthService>();
  late Disposer _loginStoreObserverToDispose;

  @override
  void initState() {
    super.initState();
    _loginStoreObserverToDispose = _loginStore.observer(
      onLoading: (isLoading) {
        isLoading
            ? Overlay.of(context)!.insert(loadingAuthentication)
            : loadingAuthentication.remove();
      },
      onState: (state) => state.loginFailureOrSuccess.foldRight(
        null,
        (acc, loginFailureOrSuccess) {
          loginFailureOrSuccess.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 1500),
                content: Text(
                  failure.maybeWhen(
                    invalidEmailAndPassword: () => 'Usuário não encontrado',
                    orElse: () => 'Houve um erro desconhecido. Por favor, tente novamente',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            (token) async {
              await _authService.addAuthentication(token);
              Modular.to.navigate(widget.afterLoginPageRoute);
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _loginStoreObserverToDispose();
    loadingAuthentication.dispose();
  }

  late OverlayEntry loadingAuthentication = OverlayEntry(
    builder: (_) => const MessageLoadingWidget(
      message: 'Autenticando usuário',
    ),
  );

  @override
  Widget build(BuildContext context) => isPortraitOrBigHeightLandscape(context)
      ? const LoginPortraitWidget()
      : const LoginLandscapeWidget();
}
