import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/modal_window_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/send_mail/send_mail_store.dart';
import '../../domain/mail/i_send_mail_repository.dart';
import '../../external/mail/mail_memory/mail_memory_sent_data_source.dart';
import '../../infrastructure/mail/mail_memory/send_mail_memory_repository.dart';
import 'send_page.dart';

class SendModule extends WidgetModule {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<ISendMailRepository>(
      (i) => SendMailMemoryRepository(
        mailDataSource: i<MailMemorySentDataSource>(),
      ),
    ),
    Bind.lazySingleton<SendMailStore>((i) => SendMailStore(sendMailRepository: i())),
  ];

  @override
  Widget get view => const ModalWindowDS(
        title: 'Nova mensagem',
        child: SendPage(),
      );
}
