import 'dart:ffi';

import 'package:flutter_mail_and_drive_core/domain/core/value_failures.dart';
import 'package:flutter_mail_and_drive_core/domain/core/value_objects.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../core/value_validators.dart';

class PasswordValue extends ValueObject<Void, String> {
  @override
  final Either<ValueFailure<Void>, String> value;
  static const minLength = 8;

  factory PasswordValue(String password) => PasswordValue._(
        validatePasswordCaracters(
          password,
        ).flatMap(
          (password) => validatePasswordLength(
            password,
            minLength,
          ),
        ),
      );

  const PasswordValue._(this.value);
}
