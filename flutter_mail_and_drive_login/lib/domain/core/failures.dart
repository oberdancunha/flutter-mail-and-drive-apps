import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.invalidEmailAndPassword() = _InvalidEmailAndPassword;
  const factory Failure.userNotLogged() = _UserNotLogged;
  const factory Failure.authenticationError({required String errorMessage}) = _AuthenticationError;
  const factory Failure.removeAuthenticationError({required String errorMessage}) =
      _RemoveAuthenticationError;
  const factory Failure.notUserAuthenticationError() = _NotUserAuthenticationError;
}
