import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/form/text_form_field_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/form/text_form_underline_input_border_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../../application/send_mail/send_mail_state.dart';
import '../../../application/send_mail/send_mail_store.dart';
import '../../../domain/core/failures.dart';

class SendFromOrToSubjectWidget extends StatelessWidget {
  const SendFromOrToSubjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendMailStore = Modular.get<SendMailStore>();
    final inputBorder = getUnderlineInputBorderDS(context);

    return ScopedBuilder<SendMailStore, MailFailure, SendMailState>(
      store: sendMailStore,
      onState: (_, state) => Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: 90,
            ),
            child: TextFormFieldDS(
              labelText: 'Para',
              border: inputBorder.border,
              focusedBorder: inputBorder.focusedBorder,
              focusedErrorBorder: inputBorder.focusedErrorBorder,
              errorBorder: inputBorder.errorBorder,
              textInputType: TextInputType.emailAddress,
              height: 7,
              validator: state.mail.replyTo.value.fold(
                (failure) => failure.maybeMap(
                  invalidEmpty: (_) => 'Por favor, informe um destinatário',
                  invalidEmail: (_) => 'Formato do email inválido',
                  orElse: () => null,
                ),
                (_) => null,
              ),
              onChanged: sendMailStore.replyToChanged,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            constraints: const BoxConstraints(
              maxHeight: 90,
            ),
            child: TextFormFieldDS(
              labelText: 'Assunto',
              border: inputBorder.border,
              focusedBorder: inputBorder.focusedBorder,
              focusedErrorBorder: inputBorder.focusedErrorBorder,
              errorBorder: inputBorder.errorBorder,
              height: 7,
              validator: state.mail.subject.value.fold(
                (failure) => failure.maybeMap(
                  invalidEmpty: (_) => 'Por favor, informe um título',
                  orElse: () => null,
                ),
                (_) => null,
              ),
              onChanged: sendMailStore.subjectChanged,
            ),
          ),
        ],
      ),
    );
  }
}
