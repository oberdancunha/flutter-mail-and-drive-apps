import 'package:flutter_mail_and_drive_core/domain/core/value_failures.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

Either<ValueFailure<String>, String> validateEmail(String email) {
  final emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  if (emailRegex.hasMatch(email)) {
    return right(email);
  }

  return left(ValueFailure.invalidEmail(failedValue: email));
}

Either<ValueFailure<String>, String> validateEmpty(String value) {
  if (value.isNotEmpty) {
    return right(value);
  }

  return left(const ValueFailure.invalidEmpty());
}
