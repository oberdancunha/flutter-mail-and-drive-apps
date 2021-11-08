// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailDetailsStateTearOff {
  const _$MailDetailsStateTearOff();

  _MailDetailsState call({required MailDetails mail, required bool isLoading}) {
    return _MailDetailsState(
      mail: mail,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $MailDetailsState = _$MailDetailsStateTearOff();

/// @nodoc
mixin _$MailDetailsState {
  MailDetails get mail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailDetailsStateCopyWith<MailDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailDetailsStateCopyWith<$Res> {
  factory $MailDetailsStateCopyWith(
          MailDetailsState value, $Res Function(MailDetailsState) then) =
      _$MailDetailsStateCopyWithImpl<$Res>;
  $Res call({MailDetails mail, bool isLoading});

  $MailDetailsCopyWith<$Res> get mail;
}

/// @nodoc
class _$MailDetailsStateCopyWithImpl<$Res>
    implements $MailDetailsStateCopyWith<$Res> {
  _$MailDetailsStateCopyWithImpl(this._value, this._then);

  final MailDetailsState _value;
  // ignore: unused_field
  final $Res Function(MailDetailsState) _then;

  @override
  $Res call({
    Object? mail = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as MailDetails,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$MailDetailsStateCopyWith<$Res>
    implements $MailDetailsStateCopyWith<$Res> {
  factory _$MailDetailsStateCopyWith(
          _MailDetailsState value, $Res Function(_MailDetailsState) then) =
      __$MailDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({MailDetails mail, bool isLoading});

  @override
  $MailDetailsCopyWith<$Res> get mail;
}

/// @nodoc
class __$MailDetailsStateCopyWithImpl<$Res>
    extends _$MailDetailsStateCopyWithImpl<$Res>
    implements _$MailDetailsStateCopyWith<$Res> {
  __$MailDetailsStateCopyWithImpl(
      _MailDetailsState _value, $Res Function(_MailDetailsState) _then)
      : super(_value, (v) => _then(v as _MailDetailsState));

  @override
  _MailDetailsState get _value => super._value as _MailDetailsState;

  @override
  $Res call({
    Object? mail = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_MailDetailsState(
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as MailDetails,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MailDetailsState implements _MailDetailsState {
  const _$_MailDetailsState({required this.mail, required this.isLoading});

  @override
  final MailDetails mail;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MailDetailsState(mail: $mail, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailDetailsState &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$MailDetailsStateCopyWith<_MailDetailsState> get copyWith =>
      __$MailDetailsStateCopyWithImpl<_MailDetailsState>(this, _$identity);
}

abstract class _MailDetailsState implements MailDetailsState {
  const factory _MailDetailsState(
      {required MailDetails mail,
      required bool isLoading}) = _$_MailDetailsState;

  @override
  MailDetails get mail => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailDetailsStateCopyWith<_MailDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
