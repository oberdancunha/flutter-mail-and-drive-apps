import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String user,
    required bool isAuthenticationVerified,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        user: '',
        isAuthenticationVerified: false,
      );
}
