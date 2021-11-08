// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailDetailsDtoTearOff {
  const _$MailDetailsDtoTearOff();

  _MailDetailsDto call(
      {required String fromOrTo,
      required String replyTo,
      required String subject,
      required String content,
      required bool wasRead,
      required DateTime date,
      String? uid}) {
    return _MailDetailsDto(
      fromOrTo: fromOrTo,
      replyTo: replyTo,
      subject: subject,
      content: content,
      wasRead: wasRead,
      date: date,
      uid: uid,
    );
  }
}

/// @nodoc
const $MailDetailsDto = _$MailDetailsDtoTearOff();

/// @nodoc
mixin _$MailDetailsDto {
  String get fromOrTo => throw _privateConstructorUsedError;
  String get replyTo => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get wasRead => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailDetailsDtoCopyWith<MailDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailDetailsDtoCopyWith<$Res> {
  factory $MailDetailsDtoCopyWith(
          MailDetailsDto value, $Res Function(MailDetailsDto) then) =
      _$MailDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {String fromOrTo,
      String replyTo,
      String subject,
      String content,
      bool wasRead,
      DateTime date,
      String? uid});
}

/// @nodoc
class _$MailDetailsDtoCopyWithImpl<$Res>
    implements $MailDetailsDtoCopyWith<$Res> {
  _$MailDetailsDtoCopyWithImpl(this._value, this._then);

  final MailDetailsDto _value;
  // ignore: unused_field
  final $Res Function(MailDetailsDto) _then;

  @override
  $Res call({
    Object? fromOrTo = freezed,
    Object? replyTo = freezed,
    Object? subject = freezed,
    Object? content = freezed,
    Object? wasRead = freezed,
    Object? date = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      fromOrTo: fromOrTo == freezed
          ? _value.fromOrTo
          : fromOrTo // ignore: cast_nullable_to_non_nullable
              as String,
      replyTo: replyTo == freezed
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      wasRead: wasRead == freezed
          ? _value.wasRead
          : wasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MailDetailsDtoCopyWith<$Res>
    implements $MailDetailsDtoCopyWith<$Res> {
  factory _$MailDetailsDtoCopyWith(
          _MailDetailsDto value, $Res Function(_MailDetailsDto) then) =
      __$MailDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fromOrTo,
      String replyTo,
      String subject,
      String content,
      bool wasRead,
      DateTime date,
      String? uid});
}

/// @nodoc
class __$MailDetailsDtoCopyWithImpl<$Res>
    extends _$MailDetailsDtoCopyWithImpl<$Res>
    implements _$MailDetailsDtoCopyWith<$Res> {
  __$MailDetailsDtoCopyWithImpl(
      _MailDetailsDto _value, $Res Function(_MailDetailsDto) _then)
      : super(_value, (v) => _then(v as _MailDetailsDto));

  @override
  _MailDetailsDto get _value => super._value as _MailDetailsDto;

  @override
  $Res call({
    Object? fromOrTo = freezed,
    Object? replyTo = freezed,
    Object? subject = freezed,
    Object? content = freezed,
    Object? wasRead = freezed,
    Object? date = freezed,
    Object? uid = freezed,
  }) {
    return _then(_MailDetailsDto(
      fromOrTo: fromOrTo == freezed
          ? _value.fromOrTo
          : fromOrTo // ignore: cast_nullable_to_non_nullable
              as String,
      replyTo: replyTo == freezed
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      wasRead: wasRead == freezed
          ? _value.wasRead
          : wasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MailDetailsDto extends _MailDetailsDto {
  const _$_MailDetailsDto(
      {required this.fromOrTo,
      required this.replyTo,
      required this.subject,
      required this.content,
      required this.wasRead,
      required this.date,
      this.uid})
      : super._();

  @override
  final String fromOrTo;
  @override
  final String replyTo;
  @override
  final String subject;
  @override
  final String content;
  @override
  final bool wasRead;
  @override
  final DateTime date;
  @override
  final String? uid;

  @override
  String toString() {
    return 'MailDetailsDto(fromOrTo: $fromOrTo, replyTo: $replyTo, subject: $subject, content: $content, wasRead: $wasRead, date: $date, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailDetailsDto &&
            (identical(other.fromOrTo, fromOrTo) ||
                const DeepCollectionEquality()
                    .equals(other.fromOrTo, fromOrTo)) &&
            (identical(other.replyTo, replyTo) ||
                const DeepCollectionEquality()
                    .equals(other.replyTo, replyTo)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.wasRead, wasRead) ||
                const DeepCollectionEquality()
                    .equals(other.wasRead, wasRead)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fromOrTo) ^
      const DeepCollectionEquality().hash(replyTo) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(wasRead) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$MailDetailsDtoCopyWith<_MailDetailsDto> get copyWith =>
      __$MailDetailsDtoCopyWithImpl<_MailDetailsDto>(this, _$identity);
}

abstract class _MailDetailsDto extends MailDetailsDto {
  const factory _MailDetailsDto(
      {required String fromOrTo,
      required String replyTo,
      required String subject,
      required String content,
      required bool wasRead,
      required DateTime date,
      String? uid}) = _$_MailDetailsDto;
  const _MailDetailsDto._() : super._();

  @override
  String get fromOrTo => throw _privateConstructorUsedError;
  @override
  String get replyTo => throw _privateConstructorUsedError;
  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  bool get wasRead => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailDetailsDtoCopyWith<_MailDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
