import 'package:flutter_mail_and_drive_core/domain/email/email_value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../domain/core/value_transformers.dart';

import '../../domain/mail/mail_details.dart';
import '../../domain/mail/value_objects.dart';

part 'mail_details_dto.freezed.dart';

@freezed
class MailDetailsDto with _$MailDetailsDto {
  const MailDetailsDto._();

  const factory MailDetailsDto({
    required String fromOrTo,
    required String replyTo,
    required String subject,
    required String content,
    required bool wasRead,
    required DateTime date,
    String? uid,
  }) = _MailDetailsDto;

  factory MailDetailsDto.fromDomain(MailDetails mail) => MailDetailsDto(
        uid: mail.uid,
        fromOrTo: mail.fromOrTo,
        replyTo: mail.replyTo.getOrError(),
        subject: mail.subject.getOrError(),
        content: mail.content,
        wasRead: mail.wasRead,
        date: DateTime.now(),
      );

  MailDetails toDomain() => MailDetails(
        uid: uid,
        fromOrTo: fromOrTo,
        replyTo: EmailValue(replyTo),
        subject: SubjectValue(subject),
        content: makeDecodeValue(content).toString(),
        wasRead: wasRead,
        date: date,
      );

  bool search({required String term}) =>
      fromOrTo.toLowerCase().contains(term) ||
      replyTo.toLowerCase().contains(term) ||
      subject.toLowerCase().contains(term) ||
      content.toLowerCase().contains(term);
}
