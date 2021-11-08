import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue}) = InvalidEmail<T>;
  const factory ValueFailure.invalidPasswordCharacters() = InvalidPasswordCharacters<T>;
  const factory ValueFailure.invalidPasswordLength() = InvalidPasswordLength<T>;
  const factory ValueFailure.invalidEmpty() = InvalidEmpty<T>;
}
