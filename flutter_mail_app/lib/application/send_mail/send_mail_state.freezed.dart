// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_mail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendMailStateTearOff {
  const _$SendMailStateTearOff();

  _SendMailState call(
      {required MailDetails mail,
      required Option<Either<MailFailure, Unit>> sendFailureOrSuccess}) {
    return _SendMailState(
      mail: mail,
      sendFailureOrSuccess: sendFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SendMailState = _$SendMailStateTearOff();

/// @nodoc
mixin _$SendMailState {
  MailDetails get mail => throw _privateConstructorUsedError;
  Option<Either<MailFailure, Unit>> get sendFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMailStateCopyWith<SendMailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMailStateCopyWith<$Res> {
  factory $SendMailStateCopyWith(
          SendMailState value, $Res Function(SendMailState) then) =
      _$SendMailStateCopyWithImpl<$Res>;
  $Res call(
      {MailDetails mail,
      Option<Either<MailFailure, Unit>> sendFailureOrSuccess});

  $MailDetailsCopyWith<$Res> get mail;
}

/// @nodoc
class _$SendMailStateCopyWithImpl<$Res>
    implements $SendMailStateCopyWith<$Res> {
  _$SendMailStateCopyWithImpl(this._value, this._then);

  final SendMailState _value;
  // ignore: unused_field
  final $Res Function(SendMailState) _then;

  @override
  $Res call({
    Object? mail = freezed,
    Object? sendFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as MailDetails,
      sendFailureOrSuccess: sendFailureOrSuccess == freezed
          ? _value.sendFailureOrSuccess
          : sendFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MailFailure, Unit>>,
    ));
  }

  @override
  $MailDetailsCopyWith<$Res> get mail {
    return $MailDetailsCopyWith<$Res>(_value.mail, (value) {
      return _then(_value.copyWith(mail: value));
    });
  }
}

/// @nodoc
abstract class _$SendMailStateCopyWith<$Res>
    implements $SendMailStateCopyWith<$Res> {
  factory _$SendMailStateCopyWith(
          _SendMailState value, $Res Function(_SendMailState) then) =
      __$SendMailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MailDetails mail,
      Option<Either<MailFailure, Unit>> sendFailureOrSuccess});

  @override
  $MailDetailsCopyWith<$Res> get mail;
}

/// @nodoc
class __$SendMailStateCopyWithImpl<$Res>
    extends _$SendMailStateCopyWithImpl<$Res>
    implements _$SendMailStateCopyWith<$Res> {
  __$SendMailStateCopyWithImpl(
      _SendMailState _value, $Res Function(_SendMailState) _then)
      : super(_value, (v) => _then(v as _SendMailState));

  @override
  _SendMailState get _value => super._value as _SendMailState;

  @override
  $Res call({
    Object? mail = freezed,
    Object? sendFailureOrSuccess = freezed,
  }) {
    return _then(_SendMailState(
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as MailDetails,
      sendFailureOrSuccess: sendFailureOrSuccess == freezed
          ? _value.sendFailureOrSuccess
          : sendFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MailFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SendMailState implements _SendMailState {
  const _$_SendMailState(
      {required this.mail, required this.sendFailureOrSuccess});

  @override
  final MailDetails mail;
  @override
  final Option<Either<MailFailure, Unit>> sendFailureOrSuccess;

  @override
  String toString() {
    return 'SendMailState(mail: $mail, sendFailureOrSuccess: $sendFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMailState &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.sendFailureOrSuccess, sendFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.sendFailureOrSuccess, sendFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(sendFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SendMailStateCopyWith<_SendMailState> get copyWith =>
      __$SendMailStateCopyWithImpl<_SendMailState>(this, _$identity);
}

abstract class _SendMailState implements SendMailState {
  const factory _SendMailState(
          {required MailDetails mail,
          required Option<Either<MailFailure, Unit>> sendFailureOrSuccess}) =
      _$_SendMailState;

  @override
  MailDetails get mail => throw _privateConstructorUsedError;
  @override
  Option<Either<MailFailure, Unit>> get sendFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SendMailStateCopyWith<_SendMailState> get copyWith =>
      throw _privateConstructorUsedError;
}
