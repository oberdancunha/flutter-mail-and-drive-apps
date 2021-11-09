import 'package:flutter_mail_and_drive_design_system/components/home/home_page_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../external/mail/mail_memory/mail_memory_sent_data_source.dart';
import '../guards/auth/auth_guard.dart';
import '../mail/draft_module.dart';
import '../mail/mail_module.dart';
import '../mail/sent_module.dart';
import '../mail/trash_module.dart';
import '../send/send_module.dart';
import 'widgets/menu_tools/menu_tools_items.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<MailMemorySentDataSource>((_) => MailMemorySentDataSource()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => HomePageDS(
        image: 'assets/images/header.png',
        initialPage: 'mail',
        showCreate: true,
        createWidget: SendModule(),
        menuToolsItems: menuToolsItems,
      ),
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
