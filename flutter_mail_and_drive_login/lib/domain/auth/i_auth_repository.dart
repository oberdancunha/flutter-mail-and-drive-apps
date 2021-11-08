import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/failures.dart';

abstract class IAuthRepository {
  Future<Either<Failure, void>> addAuthentication(String token);
  Future<Either<Failure, String>> getAuthentication();
  Future<Either<Failure, void>> removeAuthentication();
}
