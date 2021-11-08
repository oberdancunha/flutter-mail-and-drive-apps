import 'package:flutter_mail_and_drive_core/domain/email/email_value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';
import '../../domain/mail/i_send_mail_repository.dart';
import '../../domain/mail/value_objects.dart';
import 'send_mail_state.dart';

class SendMailStore extends StreamStore<MailFailure, SendMailState> {
  final ISendMailRepository sendMailRepository;

  SendMailStore({required this.sendMailRepository}) : super(SendMailState.initial());

  void replyToChanged(String replyTo) {
    final fromOrTo = replyTo.split('@').elementAt(0);
    update(
      state.copyWith(
        mail: state.mail.copyWith(
          fromOrTo: fromOrTo,
          replyTo: EmailValue(replyTo),
        ),
      ),
    );
  }

  void subjectChanged(String subject) {
    update(
      state.copyWith(
        mail: state.mail.copyWith(
          subject: SubjectValue(subject),
        ),
      ),
    );
  }

  void contentChanged(String content) {
    update(
      state.copyWith(
        mail: state.mail.copyWith(
          content: content,
        ),
      ),
    );
  }

  Future<void> send() async {
    setLoading(true);
    final sendFailureOrSuccess = await sendMailRepository.send(state.mail);
    update(
      state.copyWith(
        sendFailureOrSuccess: some(sendFailureOrSuccess),
      ),
    );
    setLoading(false);
  }

  bool isValid() => state.mail.replyTo.isValid() && state.mail.subject.isValid();
}
