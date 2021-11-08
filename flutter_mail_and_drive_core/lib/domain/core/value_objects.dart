import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'value_errors.dart';
import 'value_failures.dart';

@immutable
abstract class ValueObject<S, T> {
  Either<ValueFailure<S>, T> get value;

  const ValueObject();

  T getOrError() => value.fold(
        (valueFailure) => throw UnexpectedValueError(valueFailure),
        id,
      );

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ValueObject<S, T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
