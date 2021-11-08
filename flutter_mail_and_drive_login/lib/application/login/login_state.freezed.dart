// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required EmailValue email,
      required PasswordValue password,
      required Option<Either<Failure, String>> loginFailureOrSuccess,
      required bool isAuthenticating}) {
    return _LoginState(
      email: email,
      password: password,
      loginFailureOrSuccess: loginFailureOrSuccess,
      isAuthenticating: isAuthenticating,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  EmailValue get email => throw _privateConstructorUsedError;
  PasswordValue get password => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get loginFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isAuthenticating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {EmailValue email,
      PasswordValue password,
      Option<Either<Failure, String>> loginFailureOrSuccess,
      bool isAuthenticating});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loginFailureOrSuccess = freezed,
    Object? isAuthenticating = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValue,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValue,
      loginFailureOrSuccess: loginFailureOrSuccess == freezed
          ? _value.loginFailureOrSuccess
          : loginFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailValue email,
      PasswordValue password,
      Option<Either<Failure, String>> loginFailureOrSuccess,
      bool isAuthenticating});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loginFailureOrSuccess = freezed,
    Object? isAuthenticating = freezed,
  }) {
    return _then(_LoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValue,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValue,
      loginFailureOrSuccess: loginFailureOrSuccess == freezed
          ? _value.loginFailureOrSuccess
          : loginFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      isAuthenticating: isAuthenticating == freezed
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.email,
      required this.password,
      required this.loginFailureOrSuccess,
      required this.isAuthenticating});

  @override
  final EmailValue email;
  @override
  final PasswordValue password;
  @override
  final Option<Either<Failure, String>> loginFailureOrSuccess;
  @override
  final bool isAuthenticating;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, loginFailureOrSuccess: $loginFailureOrSuccess, isAuthenticating: $isAuthenticating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.loginFailureOrSuccess, loginFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loginFailureOrSuccess, loginFailureOrSuccess)) &&
            (identical(other.isAuthenticating, isAuthenticating) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticating, isAuthenticating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(loginFailureOrSuccess) ^
      const DeepCollectionEquality().hash(isAuthenticating);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required EmailValue email,
      required PasswordValue password,
      required Option<Either<Failure, String>> loginFailureOrSuccess,
      required bool isAuthenticating}) = _$_LoginState;

  @override
  EmailValue get email => throw _privateConstructorUsedError;
  @override
  PasswordValue get password => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, String>> get loginFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  bool get isAuthenticating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
