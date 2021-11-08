import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../infrastructure/mail/mail_details_dto.dart';
import 'mail_memory_data_source.dart';

class MailMemoryTrashDataSource extends MailMemoryDataSource {
  // ignore: long-method
  MailMemoryTrashDataSource() {
    const uuid = Uuid();
    mails = [
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 1',
        replyTo: 'trash1@draft.com',
        subject: 'Trash Mail 1',
        content: "Mail 1 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-11-04 09:45:18Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 2',
        replyTo: 'trash2@draft.com',
        subject: 'Trash Mail 2',
        content: "Mail 2 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-10-28 04:12:55Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 3',
        replyTo: 'trash3@draft.com',
        subject: 'Trash Mail 3',
        content: "Mail 3 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-10-27 17:44:33Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 4',
        replyTo: 'trash4@draft.com',
        subject: 'Trash Mail 4',
        content: "Mail 4 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-10-27 17:44:33Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 5',
        replyTo: 'trash5@draft.com',
        subject: 'Trash Mail 5',
        content: "Mail 5 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-10-26 00:01:02Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Trash 6',
        replyTo: 'trash6@draft.com',
        subject: 'Trash Mail 6',
        content: "Mail 6 in the trash.",
        wasRead: true,
        date: DateTime.parse("2021-10-25 19:58:15Z"),
      ),
    ];
  }
}
