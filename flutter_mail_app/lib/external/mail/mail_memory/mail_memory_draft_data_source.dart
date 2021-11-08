import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../infrastructure/mail/mail_details_dto.dart';
import 'mail_memory_data_source.dart';

class MailMemoryDraftDataSource extends MailMemoryDataSource {
  MailMemoryDraftDataSource() {
    const uuid = Uuid();
    mails = [
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Draft 1',
        replyTo: 'draft1@draft.com',
        subject: 'Draft Mail 1',
        content: "Not send draft 1.",
        wasRead: true,
        date: DateTime.parse("2021-11-03 03:00:00Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Draft 2',
        replyTo: 'draft2@draft.com',
        subject: 'Draft Mail 2',
        content: "Not send draft 2.",
        wasRead: true,
        date: DateTime.parse("2021-11-02 18:10:20Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Draft 3',
        replyTo: 'draft3@draft.com',
        subject: 'Draft Mail 3',
        content: "Not send draft 3.",
        wasRead: true,
        date: DateTime.parse("2021-11-01 22:20:40Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Draft 4',
        replyTo: 'draft4@draft.com',
        subject: 'Draft Mail 4',
        content: "Not send draft 4.",
        wasRead: true,
        date: DateTime.parse("2021-10-31 12:30:10Z"),
      ),
      MailDetailsDto(
        uid: uuid.v4(),
        fromOrTo: 'Draft 5',
        replyTo: 'draft5@draft.com',
        subject: 'Draft Mail 5',
        content: "Not send draft 5.",
        wasRead: true,
        date: DateTime.parse("2021-10-30 00:45:00Z"),
      ),
    ];
  }
}
