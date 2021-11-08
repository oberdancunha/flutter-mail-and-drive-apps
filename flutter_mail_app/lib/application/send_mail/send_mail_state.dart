import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../domain/core/failures.dart';

import '../../domain/mail/mail_details.dart';

part 'send_mail_state.freezed.dart';

@freezed
class SendMailState with _$SendMailState {
  const factory SendMailState({
    required MailDetails mail,
    required Option<Either<MailFailure, Unit>> sendFailureOrSuccess,
  }) = _SendMailState;

  factory SendMailState.initial() => SendMailState(
        mail: MailDetails.initial().copyWith(
          wasRead: true,
        ),
        sendFailureOrSuccess: none(),
      );
}
