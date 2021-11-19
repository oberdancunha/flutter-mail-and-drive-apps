import 'dart:ffi';

import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/auth/i_auth_repository.dart';
import 'auth_logout_state.dart';

class AuthLogoutStore extends StreamStore<Void, AuthLogoutState> {
  final IAuthRepository authRepository;

  AuthLogoutStore({required this.authRepository}) : super(AuthLogoutState.initial());

  Future<void> logout() async {
    update(
      state.copyWith(
        logout: none(),
      ),
    );
    final logout = await authRepository.removeAuthentication();
    update(
      state.copyWith(
        logout: optionOf(logout),
      ),
    );
  }
}
