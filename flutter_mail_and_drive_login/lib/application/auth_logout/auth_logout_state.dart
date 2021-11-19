import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';

part 'auth_logout_state.freezed.dart';

@freezed
abstract class AuthLogoutState with _$AuthLogoutState {
  const factory AuthLogoutState({
    required Option<Either<Failure, void>> logout,
  }) = _AuthLogoutState;

  factory AuthLogoutState.initial() => AuthLogoutState(
        logout: none(),
      );
}
