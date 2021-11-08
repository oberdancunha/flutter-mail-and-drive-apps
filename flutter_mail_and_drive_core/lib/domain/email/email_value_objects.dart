import 'package:flutter_mail_and_drive_core/domain/core/value_failures.dart';
import 'package:flutter_mail_and_drive_core/domain/core/value_objects.dart';
import 'package:flutter_mail_and_drive_core/domain/core/value_validators.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class EmailValue extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailValue(String email) => EmailValue._(validateEmpty(email).flatMap(validateEmail));

  const EmailValue._(this.value);
}
