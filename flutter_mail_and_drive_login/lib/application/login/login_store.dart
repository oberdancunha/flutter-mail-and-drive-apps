import 'dart:ffi';

import 'package:flutter_mail_and_drive_core/domain/email/email_value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/login/value_objects.dart';
import '../../domain/login/i_login_repository.dart';
import '../../infrastructure/encrypt/encrypt.dart';
import 'login_state.dart';

class LoginStore extends StreamStore<Void, LoginState> {
  final Encrypt encrypt;
  final ILoginRepository loginRepository;

  LoginStore({
    required this.encrypt,
    required this.loginRepository,
  }) : super(LoginState.initial());

  void validateEmail(String email) {
    final emailValidate = EmailValue(email);
    update(
      state.copyWith(
        email: emailValidate,
        loginFailureOrSuccess: none(),
      ),
    );
    setLoading(false);
  }

  void validatePassword(String password) {
    final passwordValidate = PasswordValue(password);
    update(
      state.copyWith(
        password: passwordValidate,
        loginFailureOrSuccess: none(),
      ),
    );
    setLoading(false);
  }

  Future<void> authenticate(String email, String password) async {
    setLoading(true);
    update(
      state.copyWith(
        loginFailureOrSuccess: none(),
        isAuthenticating: true,
      ),
    );
    final passwordEncrypted = encrypt.generate(password);
    final loginFailureOrSuccess = await loginRepository.authenticate(email, passwordEncrypted);
    update(
      state.copyWith(
        loginFailureOrSuccess: optionOf(loginFailureOrSuccess),
        isAuthenticating: false,
      ),
    );
    setLoading(false);
  }
}
