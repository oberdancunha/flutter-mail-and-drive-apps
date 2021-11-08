import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/mail/mail_store.dart';
import '../../application/mail_details/mail_details_store.dart';
import '../../domain/mail/i_mail_repository.dart';
import '../../external/mail/mail_memory/mail_memory_inbox_data_source.dart';
import '../../infrastructure/mail/mail_memory/mail_memory_repository.dart';
import 'table/mail_page.dart';

class MailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<MailMemoryInboxDataSource>((_) => MailMemoryInboxDataSource()),
    Bind.lazySingleton<IMailRepository>(
      (i) => MailRepository(
        mailDataSource: i<MailMemoryInboxDataSource>(),
      ),
    ),
    Bind.lazySingleton<MailStore>((i) => MailStore(mailRepository: i())),
    Bind.lazySingleton<MailDetailsStore>((i) => MailDetailsStore(mailRepository: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const MailPage(),
    ),
  ];
}
