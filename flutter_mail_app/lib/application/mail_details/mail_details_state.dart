import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/mail/mail_details.dart';

part 'mail_details_state.freezed.dart';

@freezed
abstract class MailDetailsState with _$MailDetailsState {
  const factory MailDetailsState({
    required MailDetails mail,
    required bool isLoading,
  }) = _MailDetailsState;

  factory MailDetailsState.initial() => MailDetailsState(
        mail: MailDetails.initial(),
        isLoading: true,
      );
}
