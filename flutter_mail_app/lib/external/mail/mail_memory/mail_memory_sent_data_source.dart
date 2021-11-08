import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../infrastructure/mail/mail_details_dto.dart';
import 'mail_memory_data_source.dart';

class MailMemorySentDataSource extends MailMemoryDataSource {
  // ignore: long-method
  MailMemorySentDataSource() {
    const uuid = Uuid();
    mails = [
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Jude',
        replyTo: 'jude@beatles.com',
        subject: 'Hey Jude',
        content: "Hey Jude, don't make it bad.",
        wasRead: true,
        date: DateTime.parse("2021-10-12 06:10:20Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Seu moço',
        replyTo: 'sos@raulseixas.com',
        subject: 'SOS',
        content: "Oh! Oh! Seu moço, do disco voador, me leve com você pra onde você for",
        wasRead: true,
        date: DateTime.parse("2021-10-13 23:59:59Z"),
      ),
    ];
  }
}
