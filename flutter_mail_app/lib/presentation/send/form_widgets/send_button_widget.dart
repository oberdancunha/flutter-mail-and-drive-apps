import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/button/button_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../application/send_mail/send_mail_state.dart';
import '../../../application/send_mail/send_mail_store.dart';
import '../../../domain/core/failures.dart';

class SendButtonWidget extends StatelessWidget {
  const SendButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sendMailStore = Modular.get<SendMailStore>();

    return ScopedBuilder<SendMailStore, MailFailure, SendMailState>(
      store: _sendMailStore,
      onState: (_, state) => ButtonDS(
        label: 'Enviar',
        enabled: _sendMailStore.isValid(),
        onPressed: () async {
          if (_sendMailStore.isValid()) {
            await _sendMailStore.send();
          }
        },
      ),
    );
  }
}
