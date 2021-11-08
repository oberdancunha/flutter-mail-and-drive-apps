import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/button/button_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/form/text_form_field_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../application/login/login_state.dart';
import '../../../application/login/login_store.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _loginStore = Modular.get<LoginStore>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            ScopedBuilder<LoginStore, Void, LoginState>(
              store: _loginStore,
              onState: (_, state) => Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      _buildEmailTextField(state),
                      const SizedBox(height: 20),
                      _buildPasswordTextField(state),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ButtonDS(
                          label: 'Enviar',
                          enabled: _formIsValid(state),
                          onPressed: () {
                            _authenticate(state);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  TextFormFieldDS _buildEmailTextField(LoginState state) => TextFormFieldDS(
        labelText: 'Email',
        prefixIcon: const Icon(Icons.mail),
        validator: state.email.value.fold(
          (failure) => failure.maybeMap(
            invalidEmail: (_) => 'Formato do email inválido',
            orElse: () => null,
          ),
          (_) => null,
        ),
        onChanged: _loginStore.validateEmail,
        controller: _emailController,
        textInputType: TextInputType.emailAddress,
        enabled: !state.isAuthenticating,
      );

  TextFormFieldDS _buildPasswordTextField(LoginState state) => TextFormFieldDS(
        labelText: 'Senha',
        obscureText: true,
        prefixIcon: const Icon(Icons.lock),
        validator: state.password.value.fold(
          (failure) => failure.maybeMap(
            invalidPasswordCharacters: (_) =>
                'A senha deve ter ao menos um caractere maíusculo, um minúsculo, um número e um especial',
            invalidPasswordLength: (_) => 'A senha dever ter ao menos 8 caracteres',
            orElse: () => null,
          ),
          (_) => null,
        ),
        onChanged: _loginStore.validatePassword,
        controller: _passwordController,
        enabled: !state.isAuthenticating,
      );

  void _authenticate(LoginState state) {
    if (_formIsValid(state)) {
      _loginStore.authenticate(
        _emailController.text,
        _passwordController.text,
      );
    }
  }

  bool _formIsValid(LoginState state) =>
      state.email.value.isRight() && state.password.value.isRight() && !state.isAuthenticating;
}
