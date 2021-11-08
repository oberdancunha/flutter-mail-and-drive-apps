import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../external/mail/mail_memory/mail_memory_sent_data_source.dart';
import '../guards/auth/auth_guard.dart';
import '../mail/draft_module.dart';
import '../mail/mail_module.dart';
import '../mail/sent_module.dart';
import '../mail/trash_module.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<MailMemorySentDataSource>((_) => MailMemorySentDataSource()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const HomePage(),
      children: [
        ModuleRoute(
          '/mail',
          module: MailModule(),
        ),
        ModuleRoute(
          '/sent',
          module: SentModule(),
        ),
        ModuleRoute(
          '/draft',
          module: DraftModule(),
        ),
        ModuleRoute(
          '/trash',
          module: TrashModule(),
        ),
      ],
      guards: [AuthGuard()],
    ),
  ];
}
