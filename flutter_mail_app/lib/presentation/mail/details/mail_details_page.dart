import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/loading/loading_text_shimmer_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../application/mail_details/mail_details_state.dart';
import '../../../application/mail_details/mail_details_store.dart';
import '../../../domain/core/failures.dart';
import 'widgets/mail_details_content_widget.dart';
import 'widgets/mail_details_from_or_to_subject_widget.dart';

class MailDetailsPage extends StatefulWidget {
  final String uid;

  const MailDetailsPage({
    required this.uid,
    Key? key,
  }) : super(key: key);

  @override
  State<MailDetailsPage> createState() => _MailDetailsPageState();
}

class _MailDetailsPageState extends State<MailDetailsPage> {
  final _mailDetailsStore = Modular.get<MailDetailsStore>();
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _mailDetailsStore.search(widget.uid);
  }

  @override
  void dispose() {
    debugPrint('Chamando o dipose....');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      ScopedBuilder<MailDetailsStore, MailFailure, MailDetailsState>(
        store: _mailDetailsStore,
        onState: (_, state) => !state.isLoading
            ? Padding(
                padding: const EdgeInsets.all(8),
                child: Scrollbar(
                  controller: _scrollController,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MailDetailsFromOrToSubjectWidget(
                          fromOrTo: state.mail.fromOrTo,
                          replyTo: state.mail.replyTo.getOrError(),
                          subject: state.mail.subject.getOrError(),
                        ),
                        const SizedBox(height: 40),
                        MailDetailsContentWidget(content: state.mail.content),
                      ],
                    ),
                  ),
                ),
              )
            : const LoadingTextShimmerDS(),
      );
}
