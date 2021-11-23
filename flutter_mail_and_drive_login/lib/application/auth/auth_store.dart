import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/core/failures.dart';
import 'auth_state.dart';

class AuthStore extends StreamStore<Failure, AuthState> {
  final IAuthRepository authRepository;

  AuthStore({required this.authRepository}) : super(AuthState.initial());

  Future<void> getUserLogged() async {
    update(AuthState.initial());
    final authentication = await authRepository.getAuthentication();
    authentication.fold(
      setError,
      (token) {
        authRepository.getUserLogged(token).fold(
              setError,
              (user) => update(
                state.copyWith(
                  user: user,
                  isAuthenticationVerified: true,
                ),
              ),
            );
      },
    );
  }
}
