import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/app_template/app_template_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/loading/loading_text_shimmer_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/no_results/empty_result_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/no_results/error_result_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../application/mail/mail_state.dart';
import '../../../application/mail/mail_store.dart';
import '../../../domain/core/failures.dart';
import '../../search/search_widget.dart';
import 'widgets/mail_table_navigation_actions_widget.dart';
import 'widgets/mail_table_widget.dart';

class MailPage extends StatefulWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  final _mailStore = Modular.get<MailStore>();

  @override
  void initState() {
    super.initState();
    _mailStore.list(
      initialData: _mailStore.state.initialData,
      lastData: _mailStore.state.lastData,
    );
  }

  @override
  Widget build(BuildContext context) => AppTemplateDS(
        searchWidget: const SearchWidget(),
        appWidget: ScopedBuilder<MailStore, MailFailure, MailState>(
          store: _mailStore,
          onLoading: (_) => const Center(
            child: LoadingTextShimmerDS(),
          ),
          onError: (_, __) => const ErrorResultDS(),
          onState: (_, state) => state.mails.total > 0
              ? Column(
                  children: [
                    MailTableNavigationActionsWidget(mailStore: _mailStore, mailState: state),
                    Expanded(child: MailTableWidget(mails: state.mails)),
                  ],
                )
              : const EmptyResultDS(),
        ),
      );
}
