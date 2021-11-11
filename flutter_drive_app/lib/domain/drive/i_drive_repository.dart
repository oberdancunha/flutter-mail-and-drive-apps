import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/failures.dart';
import 'drive.dart';

abstract class IDriveRepository {
  Future<Either<DriveFailure, KtList<Drive>>> list();
}
