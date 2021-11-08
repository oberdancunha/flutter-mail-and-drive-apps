import 'package:flutter_mail_and_drive_core/domain/email/email_value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'value_objects.dart';

part 'mail_details.freezed.dart';

@freezed
abstract class MailDetails with _$MailDetails {
  const MailDetails._();

  const factory MailDetails({
    required String fromOrTo,
    required EmailValue replyTo,
    required SubjectValue subject,
    required String content,
    required bool wasRead,
    required DateTime date,
    String? uid,
  }) = _MailDetails;

  factory MailDetails.initial() => MailDetails(
        fromOrTo: '',
        replyTo: EmailValue(''),
        subject: SubjectValue(''),
        content: '',
        wasRead: false,
        date: DateTime.now(),
      );
}
