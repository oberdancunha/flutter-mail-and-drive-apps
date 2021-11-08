import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'failures.freezed.dart';

@freezed
abstract class MailFailure with _$MailFailure {
  const factory MailFailure.unexpected({required String error}) = _Unexpected;
  const factory MailFailure.send({required String error}) = _Add;
  const factory MailFailure.search({required String error}) = _Search;
}
