// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPasswordCharacters<T> invalidPasswordCharacters<T>() {
    return InvalidPasswordCharacters<T>();
  }

  InvalidPasswordLength<T> invalidPasswordLength<T>() {
    return InvalidPasswordLength<T>();
  }

  InvalidEmpty<T> invalidEmpty<T>() {
    return InvalidEmpty<T>();
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function() invalidPasswordCharacters,
    required TResult Function() invalidPasswordLength,
    required TResult Function() invalidEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPasswordCharacters<T> value)
        invalidPasswordCharacters,
    required TResult Function(InvalidPasswordLength<T> value)
        invalidPasswordLength,
    required TResult Function(InvalidEmpty<T> value) invalidEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function() invalidPasswordCharacters,
    required TResult Function() invalidPasswordLength,
    required TResult Function() invalidEmpty,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPasswordCharacters<T> value)
        invalidPasswordCharacters,
    required TResult Function(InvalidPasswordLength<T> value)
        invalidPasswordLength,
    required TResult Function(InvalidEmpty<T> value) invalidEmpty,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCharactersCopyWith<T, $Res> {
  factory $InvalidPasswordCharactersCopyWith(InvalidPasswordCharacters<T> value,
          $Res Function(InvalidPasswordCharacters<T>) then) =
      _$InvalidPasswordCharactersCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InvalidPasswordCharactersCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCharactersCopyWith<T, $Res> {
  _$InvalidPasswordCharactersCopyWithImpl(InvalidPasswordCharacters<T> _value,
      $Res Function(InvalidPasswordCharacters<T>) _then)
      : super(_value, (v) => _then(v as InvalidPasswordCharacters<T>));

  @override
  InvalidPasswordCharacters<T> get _value =>
      super._value as InvalidPasswordCharacters<T>;
}

/// @nodoc

class _$InvalidPasswordCharacters<T> implements InvalidPasswordCharacters<T> {
  const _$InvalidPasswordCharacters();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPasswordCharacters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPasswordCharacters<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function() invalidPasswordCharacters,
    required TResult Function() invalidPasswordLength,
    required TResult Function() invalidEmpty,
  }) {
    return invalidPasswordCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
  }) {
    return invalidPasswordCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidPasswordCharacters != null) {
      return invalidPasswordCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPasswordCharacters<T> value)
        invalidPasswordCharacters,
    required TResult Function(InvalidPasswordLength<T> value)
        invalidPasswordLength,
    required TResult Function(InvalidEmpty<T> value) invalidEmpty,
  }) {
    return invalidPasswordCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
  }) {
    return invalidPasswordCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidPasswordCharacters != null) {
      return invalidPasswordCharacters(this);
    }
    return orElse();
  }
}

abstract class InvalidPasswordCharacters<T> implements ValueFailure<T> {
  const factory InvalidPasswordCharacters() = _$InvalidPasswordCharacters<T>;
}

/// @nodoc
abstract class $InvalidPasswordLengthCopyWith<T, $Res> {
  factory $InvalidPasswordLengthCopyWith(InvalidPasswordLength<T> value,
          $Res Function(InvalidPasswordLength<T>) then) =
      _$InvalidPasswordLengthCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InvalidPasswordLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordLengthCopyWith<T, $Res> {
  _$InvalidPasswordLengthCopyWithImpl(InvalidPasswordLength<T> _value,
      $Res Function(InvalidPasswordLength<T>) _then)
      : super(_value, (v) => _then(v as InvalidPasswordLength<T>));

  @override
  InvalidPasswordLength<T> get _value =>
      super._value as InvalidPasswordLength<T>;
}

/// @nodoc

class _$InvalidPasswordLength<T> implements InvalidPasswordLength<T> {
  const _$InvalidPasswordLength();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPasswordLength()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPasswordLength<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function() invalidPasswordCharacters,
    required TResult Function() invalidPasswordLength,
    required TResult Function() invalidEmpty,
  }) {
    return invalidPasswordLength();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
  }) {
    return invalidPasswordLength?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidPasswordLength != null) {
      return invalidPasswordLength();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPasswordCharacters<T> value)
        invalidPasswordCharacters,
    required TResult Function(InvalidPasswordLength<T> value)
        invalidPasswordLength,
    required TResult Function(InvalidEmpty<T> value) invalidEmpty,
  }) {
    return invalidPasswordLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
  }) {
    return invalidPasswordLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidPasswordLength != null) {
      return invalidPasswordLength(this);
    }
    return orElse();
  }
}

abstract class InvalidPasswordLength<T> implements ValueFailure<T> {
  const factory InvalidPasswordLength() = _$InvalidPasswordLength<T>;
}

/// @nodoc
abstract class $InvalidEmptyCopyWith<T, $Res> {
  factory $InvalidEmptyCopyWith(
          InvalidEmpty<T> value, $Res Function(InvalidEmpty<T>) then) =
      _$InvalidEmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InvalidEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmptyCopyWith<T, $Res> {
  _$InvalidEmptyCopyWithImpl(
      InvalidEmpty<T> _value, $Res Function(InvalidEmpty<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmpty<T>));

  @override
  InvalidEmpty<T> get _value => super._value as InvalidEmpty<T>;
}

/// @nodoc

class _$InvalidEmpty<T> implements InvalidEmpty<T> {
  const _$InvalidEmpty();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmpty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function() invalidPasswordCharacters,
    required TResult Function() invalidPasswordLength,
    required TResult Function() invalidEmpty,
  }) {
    return invalidEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
  }) {
    return invalidEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function()? invalidPasswordCharacters,
    TResult Function()? invalidPasswordLength,
    TResult Function()? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmpty != null) {
      return invalidEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPasswordCharacters<T> value)
        invalidPasswordCharacters,
    required TResult Function(InvalidPasswordLength<T> value)
        invalidPasswordLength,
    required TResult Function(InvalidEmpty<T> value) invalidEmpty,
  }) {
    return invalidEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
  }) {
    return invalidEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPasswordCharacters<T> value)?
        invalidPasswordCharacters,
    TResult Function(InvalidPasswordLength<T> value)? invalidPasswordLength,
    TResult Function(InvalidEmpty<T> value)? invalidEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmpty != null) {
      return invalidEmpty(this);
    }
    return orElse();
  }
}

abstract class InvalidEmpty<T> implements ValueFailure<T> {
  const factory InvalidEmpty() = _$InvalidEmpty<T>;
}
