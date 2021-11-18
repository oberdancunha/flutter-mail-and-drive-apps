import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/core/exceptions.dart';
import '../../domain/core/failures.dart';
import '../jwt/jwt.dart';
import 'auth_data_source.dart';

class AuthRepository implements IAuthRepository {
  final AuthDataSource authDataSource;
  final Jwt jwt;

  AuthRepository({
    required this.authDataSource,
    required this.jwt,
  });

  @override
  Future<Either<Failure, void>> addAuthentication(String token) async {
    try {
      await authDataSource.addAuthentication(token);

      return right(null);
    } on AuthenticationException catch (exception) {
      return left(Failure.authenticationError(errorMessage: exception.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> getAuthentication() async {
    try {
      final token = await authDataSource.getAuthentication();
      if (token.isEmpty) {
        return left(const Failure.notUserAuthenticationError());
      }

      return right(token);
    } on AuthenticationException catch (exception) {
      return left(Failure.authenticationError(errorMessage: exception.errorMessage));
    }
  }

  @override
  Future<Either<Failure, void>> removeAuthentication() async {
    try {
      await authDataSource.removeAuthentication();

      return right(null);
    } on AuthenticationException catch (exception) {
      return left(Failure.authenticationError(errorMessage: exception.errorMessage));
    }
  }

  @override
  Either<Failure, String> getUserLogged(String token) {
    try {
      final user = jwt.getUserLogged(token);

      return right(user);
    } on NotUserAuthenticationException {
      return left(const Failure.notUserAuthenticationError());
    }
  }
}
