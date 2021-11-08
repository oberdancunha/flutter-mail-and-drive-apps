import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';
import '../../domain/mail/mail.dart';

part 'mail_state.freezed.dart';

@freezed
class MailState with _$MailState {
  const factory MailState({
    required Mail mails,
    required int initialData,
    required int lastData,
    required int dataPerPage,
    String? term,
  }) = _MailState;

  factory MailState.initial() => MailState(
        mails: Mail.initial(),
        initialData: 0,
        lastData: 10,
        dataPerPage: 10,
      );
}
