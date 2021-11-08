// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailTearOff {
  const _$MailTearOff();

  _Mail call({required int total, required KtList<MailDetails> details}) {
    return _Mail(
      total: total,
      details: details,
    );
  }
}

/// @nodoc
const $Mail = _$MailTearOff();

/// @nodoc
mixin _$Mail {
  int get total => throw _privateConstructorUsedError;
  KtList<MailDetails> get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailCopyWith<Mail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailCopyWith<$Res> {
  factory $MailCopyWith(Mail value, $Res Function(Mail) then) =
      _$MailCopyWithImpl<$Res>;
  $Res call({int total, KtList<MailDetails> details});
}

/// @nodoc
class _$MailCopyWithImpl<$Res> implements $MailCopyWith<$Res> {
  _$MailCopyWithImpl(this._value, this._then);

  final Mail _value;
  // ignore: unused_field
  final $Res Function(Mail) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as KtList<MailDetails>,
    ));
  }
}

/// @nodoc
abstract class _$MailCopyWith<$Res> implements $MailCopyWith<$Res> {
  factory _$MailCopyWith(_Mail value, $Res Function(_Mail) then) =
      __$MailCopyWithImpl<$Res>;
  @override
  $Res call({int total, KtList<MailDetails> details});
}

/// @nodoc
class __$MailCopyWithImpl<$Res> extends _$MailCopyWithImpl<$Res>
    implements _$MailCopyWith<$Res> {
  __$MailCopyWithImpl(_Mail _value, $Res Function(_Mail) _then)
      : super(_value, (v) => _then(v as _Mail));

  @override
  _Mail get _value => super._value as _Mail;

  @override
  $Res call({
    Object? total = freezed,
    Object? details = freezed,
  }) {
    return _then(_Mail(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as KtList<MailDetails>,
    ));
  }
}

/// @nodoc

class _$_Mail extends _Mail {
  const _$_Mail({required this.total, required this.details}) : super._();

  @override
  final int total;
  @override
  final KtList<MailDetails> details;

  @override
  String toString() {
    return 'Mail(total: $total, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mail &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$MailCopyWith<_Mail> get copyWith =>
      __$MailCopyWithImpl<_Mail>(this, _$identity);
}

abstract class _Mail extends Mail {
  const factory _Mail(
      {required int total, required KtList<MailDetails> details}) = _$_Mail;
  const _Mail._() : super._();

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  KtList<MailDetails> get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailCopyWith<_Mail> get copyWith => throw _privateConstructorUsedError;
}
