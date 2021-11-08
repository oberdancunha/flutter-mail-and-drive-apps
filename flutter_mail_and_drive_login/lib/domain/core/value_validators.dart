import 'dart:ffi';

import 'package:flutter_mail_and_drive_core/domain/core/value_failures.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

Either<ValueFailure<Void>, String> validatePasswordCaracters(String password) {
  final passwordRegex = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$");
  if (passwordRegex.hasMatch(password)) {
    return right(password);
  }

  return left(const ValueFailure.invalidPasswordCharacters());
}

Either<ValueFailure<Void>, String> validatePasswordLength(String password, int minLength) {
  if (password.length >= minLength) {
    return right(password);
  }

  return left(const ValueFailure.invalidPasswordLength());
}
