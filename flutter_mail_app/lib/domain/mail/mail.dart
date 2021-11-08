import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'mail_details.dart';

part 'mail.freezed.dart';

@freezed
class Mail with _$Mail {
  const Mail._();

  const factory Mail({
    required int total,
    required KtList<MailDetails> details,
  }) = _Mail;

  factory Mail.initial() => const Mail(
        total: 0,
        details: KtList.empty(),
      );
}
