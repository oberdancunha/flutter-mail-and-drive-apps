import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/exceptions.dart';
import '../../domain/core/failures.dart';
import '../../domain/login/i_login_repository.dart';
import 'login_data_source.dart';

class LoginRepository implements ILoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepository({
    required this.loginDataSource,
  });

  @override
  Future<Either<Failure, String>> authenticate(String email, String password) async {
    try {
      final token = await loginDataSource.authenticate(email, password);

      return right(token);
    } on LoginException {
      return left(const Failure.invalidEmailAndPassword());
    }
  }
}
