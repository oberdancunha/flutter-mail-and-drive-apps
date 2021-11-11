import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'failures.freezed.dart';

@freezed
abstract class DriveFailure with _$DriveFailure {
  const factory DriveFailure.unexpected({required String error}) = _Unexpected;
}
