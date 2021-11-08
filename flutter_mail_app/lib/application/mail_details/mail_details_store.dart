import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';
import '../../domain/mail/i_mail_repository.dart';
import 'mail_details_state.dart';

class MailDetailsStore extends StreamStore<MailFailure, MailDetailsState> {
  final IMailRepository mailRepository;

  MailDetailsStore({
    required this.mailRepository,
  }) : super(MailDetailsState.initial());

  Future<void> search(String uid) async {
    (await mailRepository.search(uid)).fold(
      (failure) {
        setError(failure);
        update(
          state.copyWith(
            isLoading: false,
          ),
        );
      },
      (mail) => update(
        state.copyWith(
          mail: mail,
          isLoading: false,
        ),
      ),
    );
  }
}
