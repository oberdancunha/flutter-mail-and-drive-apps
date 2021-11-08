import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/exceptions.dart';
import '../../infrastructure/auth/auth_data_source.dart';

class AuthSharedPreferenceDataSource implements AuthDataSource {
  late SharedPreferences _sharedPreferences;
  static const String _authKey = 'token';

  AuthSharedPreferenceDataSource();

  @override
  Future<void> addAuthentication(String token) async {
    try {
      await _init();
      await _sharedPreferences.setString(_authKey, token);

      return;
    } on Exception catch (errorMessage) {
      throw AuthenticationException(errorMessage: errorMessage.toString());
    }
  }

  @override
  Future<String> getAuthentication() async {
    try {
      await _init();

      return _sharedPreferences.getString(_authKey) ?? '';
    } on Exception catch (errorMessage) {
      throw AuthenticationException(errorMessage: errorMessage.toString());
    }
  }

  @override
  Future<void> removeAuthentication() async {
    try {
      await _init();
      await _sharedPreferences.remove(_authKey);

      return;
    } on Exception catch (errorMessage) {
      throw AuthenticationException(errorMessage: errorMessage.toString());
    }
  }

  Future<void> _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
}
