class LoginException implements Exception {}

abstract class ExceptionMessage implements Exception {
  String get errorMessage;
}

class AuthenticationException extends ExceptionMessage {
  @override
  final String errorMessage;

  AuthenticationException({required this.errorMessage});
}

class NotUserAuthenticationException extends ExceptionMessage {
  @override
  final String errorMessage;

  NotUserAuthenticationException({required this.errorMessage});
}
