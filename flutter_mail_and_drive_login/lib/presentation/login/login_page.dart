import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/header/main_header_logo_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/auth/auth_store.dart';
import '../../application/login/login_store.dart';
import 'widgets/loading/message_loading_widget.dart';
import 'widgets/login_form_widget.dart';

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
  final _authStore = Modular.get<AuthStore>();
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
              await _authStore.addAuthentication(token);
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
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: MainHeaderLogoDS(),
            ),
          ),
          const Expanded(
            child: LoginFormWidget(),
          ),
        ],
      );
}
