import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';
import '../../domain/mail/i_mail_repository.dart';
import 'mail_navigation_controller.dart';
import 'mail_state.dart';

class MailStore extends StreamStore<MailFailure, MailState> {
  final IMailRepository mailRepository;
  final mailNavigationController = MailNavigationController();

  MailStore({required this.mailRepository}) : super(MailState.initial());

  Future<void> list({
    int? initialData,
    int? lastData,
  }) async {
    setLoading(true);
    initialData ??= state.initialData;
    lastData ??= state.lastData;
    int lastDataAdjusted = mailNavigationController.adjustLastDataNavigationPerPage(
      state.dataPerPage,
      lastData,
    );
    mailRepository
        .list(
      initialData: initialData,
      lastData: lastDataAdjusted,
      term: state.term,
    )
        .listen(
      (failureOrMail) {
        failureOrMail.fold(
          (failure) {
            setError(failure);
            setLoading(false);
          },
          (mails) {
            final int initialDataAdjusted = mailNavigationController.adjustInitialDataByMailsTotal(
              mails.total,
              initialData!,
            );
            lastDataAdjusted = mailNavigationController.adjustLastData(
              mails.total,
              state.dataPerPage,
              lastDataAdjusted,
            );
            update(
              state.copyWith(
                mails: mails,
                initialData: initialDataAdjusted,
                lastData: lastDataAdjusted,
              ),
            );
            setLoading(false);
          },
        );
      },
    );
  }

  Future<void> search({String? term}) async {
    update(
      state.copyWith(
        initialData: MailState.initial().initialData,
        lastData: MailState.initial().lastData,
        term: term,
      ),
    );
    await list();
  }
}
