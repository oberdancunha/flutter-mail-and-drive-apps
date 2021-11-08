import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/failures.dart';
import 'mail_details.dart';

abstract class ISendMailRepository {
  Future<Either<MailFailure, Unit>> send(MailDetails mail);
}
