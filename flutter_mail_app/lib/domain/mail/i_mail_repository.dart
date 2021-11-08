import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/failures.dart';
import 'mail.dart';
import 'mail_details.dart';

abstract class IMailRepository {
  Stream<Either<MailFailure, Mail>> list({
    required int initialData,
    required int lastData,
    String? term,
  });
  Future<Either<MailFailure, MailDetails>> search(String uid);
}
