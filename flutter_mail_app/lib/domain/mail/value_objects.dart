import 'package:flutter_mail_and_drive_core/domain/core/value_failures.dart';
import 'package:flutter_mail_and_drive_core/domain/core/value_objects.dart';
import 'package:flutter_mail_and_drive_core/domain/core/value_validators.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class SubjectValue extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SubjectValue(String subject) => SubjectValue._(validateEmpty(subject));

  const SubjectValue._(this.value);
}
