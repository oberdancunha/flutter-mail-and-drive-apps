import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/send_mail/send_mail_store.dart';
import '../../domain/mail/i_send_mail_repository.dart';
import 'form_widgets/send_form_widget.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  final _sendMailStore = Modular.get<SendMailStore>();

  @override
  void initState() {
    super.initState();
    _sendMailStore.observer(
      onState: (state) {
        state.sendFailureOrSuccess.map(
          (failureOrSuccess) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  failureOrSuccess.fold(
                    (failure) => failure.maybeMap(
                      send: (_) => 'Error ao enviar o email. Tente novamente, por favor',
                      orElse: () => '',
                    ),
                    (_) => 'Email enviado com sucesso',
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    Modular
      ..dispose<ISendMailRepository>()
      ..dispose<SendMailStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(8),
        child: SendFormWidget(),
      );
}
