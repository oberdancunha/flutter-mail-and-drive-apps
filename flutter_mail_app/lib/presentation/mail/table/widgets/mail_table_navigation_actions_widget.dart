import 'package:flutter/material.dart';

import '../../../../application/mail/mail_state.dart';
import '../../../../application/mail/mail_store.dart';
import 'mail_table_navigation_widget.dart';

class MailTableNavigationActionsWidget extends StatelessWidget {
  final MailStore mailStore;
  final MailState mailState;

  const MailTableNavigationActionsWidget({
    required this.mailStore,
    required this.mailState,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MailTableNavigationWidget(
        total: mailState.mails.total,
        initialData: mailState.mails.total == 0 ? mailState.mails.total : mailState.initialData + 1,
        lastData: mailState.lastData,
        navigationPrevious: () {
          mailStore.list(
            initialData: mailState.initialData - mailState.dataPerPage,
            lastData: mailState.lastData - mailState.dataPerPage,
          );
        },
        navigationNext: () {
          mailStore.list(
            initialData: mailState.initialData + mailState.dataPerPage,
            lastData: mailState.lastData + mailState.dataPerPage,
          );
        },
      );
}
