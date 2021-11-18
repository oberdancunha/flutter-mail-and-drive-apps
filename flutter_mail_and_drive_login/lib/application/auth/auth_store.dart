import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/core/failures.dart';

class AuthStore extends StreamStore<Failure, String> {
  final IAuthRepository authRepository;

  AuthStore({required this.authRepository}) : super('');

  Future<void> getUserLogged() async {
    final authentication = await authRepository.getAuthentication();
    authentication.fold(
      setError,
      (token) {
        authRepository.getUserLogged(token).fold(
              setError,
              update,
            );
      },
    );
  }
}
