import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/core/exceptions.dart';
import '../../domain/core/failures.dart';
import 'auth_data_source.dart';

class AuthRepository implements IAuthRepository {
  final AuthDataSource authDataSource;

  AuthRepository({required this.authDataSource});

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
}
