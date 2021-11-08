import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/failures.dart';

abstract class ILoginRepository {
  Future<Either<Failure, String>> authenticate(String email, String password);
}
