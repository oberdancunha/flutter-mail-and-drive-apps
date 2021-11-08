import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../domain/mail/mail.dart';

import 'mail_details_dto.dart';

part 'mail_dto.freezed.dart';

@freezed
class MailDto with _$MailDto {
  const MailDto._();

  const factory MailDto({
    required int total,
    required List<MailDetailsDto> details,
  }) = _MailDto;

  Mail toDomain() => Mail(
        total: total,
        details: details.map((detail) => detail.toDomain()).toImmutableList(),
      );
}
