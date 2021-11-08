import 'package:flutter_mail_and_drive_core/domain/email/email_value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/login/value_objects.dart';
import '../../domain/core/failures.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailValue email,
    required PasswordValue password,
    required Option<Either<Failure, String>> loginFailureOrSuccess,
    required bool isAuthenticating,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: EmailValue(''),
        password: PasswordValue(''),
        loginFailureOrSuccess: none(),
        isAuthenticating: false,
      );
}
