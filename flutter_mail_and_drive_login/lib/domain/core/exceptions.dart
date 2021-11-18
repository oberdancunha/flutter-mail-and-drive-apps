class LoginException implements Exception {}

class AuthenticationException implements Exception {
  final String errorMessage;

  AuthenticationException({required this.errorMessage});
}

class NotUserAuthenticationException implements Exception {}
