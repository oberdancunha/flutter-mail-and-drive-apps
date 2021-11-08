// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailDetailsTearOff {
  const _$MailDetailsTearOff();

  _MailDetails call(
      {required String fromOrTo,
      required EmailValue replyTo,
      required SubjectValue subject,
      required String content,
      required bool wasRead,
      required DateTime date,
      String? uid}) {
    return _MailDetails(
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
const $MailDetails = _$MailDetailsTearOff();

/// @nodoc
mixin _$MailDetails {
  String get fromOrTo => throw _privateConstructorUsedError;
  EmailValue get replyTo => throw _privateConstructorUsedError;
  SubjectValue get subject => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get wasRead => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailDetailsCopyWith<MailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailDetailsCopyWith<$Res> {
  factory $MailDetailsCopyWith(
          MailDetails value, $Res Function(MailDetails) then) =
      _$MailDetailsCopyWithImpl<$Res>;
  $Res call(
      {String fromOrTo,
      EmailValue replyTo,
      SubjectValue subject,
      String content,
      bool wasRead,
      DateTime date,
      String? uid});
}

/// @nodoc
class _$MailDetailsCopyWithImpl<$Res> implements $MailDetailsCopyWith<$Res> {
  _$MailDetailsCopyWithImpl(this._value, this._then);

  final MailDetails _value;
  // ignore: unused_field
  final $Res Function(MailDetails) _then;

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
              as EmailValue,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectValue,
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
abstract class _$MailDetailsCopyWith<$Res>
    implements $MailDetailsCopyWith<$Res> {
  factory _$MailDetailsCopyWith(
          _MailDetails value, $Res Function(_MailDetails) then) =
      __$MailDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fromOrTo,
      EmailValue replyTo,
      SubjectValue subject,
      String content,
      bool wasRead,
      DateTime date,
      String? uid});
}

/// @nodoc
class __$MailDetailsCopyWithImpl<$Res> extends _$MailDetailsCopyWithImpl<$Res>
    implements _$MailDetailsCopyWith<$Res> {
  __$MailDetailsCopyWithImpl(
      _MailDetails _value, $Res Function(_MailDetails) _then)
      : super(_value, (v) => _then(v as _MailDetails));

  @override
  _MailDetails get _value => super._value as _MailDetails;

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
    return _then(_MailDetails(
      fromOrTo: fromOrTo == freezed
          ? _value.fromOrTo
          : fromOrTo // ignore: cast_nullable_to_non_nullable
              as String,
      replyTo: replyTo == freezed
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as EmailValue,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectValue,
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

class _$_MailDetails extends _MailDetails {
  const _$_MailDetails(
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
  final EmailValue replyTo;
  @override
  final SubjectValue subject;
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
    return 'MailDetails(fromOrTo: $fromOrTo, replyTo: $replyTo, subject: $subject, content: $content, wasRead: $wasRead, date: $date, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailDetails &&
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
  _$MailDetailsCopyWith<_MailDetails> get copyWith =>
      __$MailDetailsCopyWithImpl<_MailDetails>(this, _$identity);
}

abstract class _MailDetails extends MailDetails {
  const factory _MailDetails(
      {required String fromOrTo,
      required EmailValue replyTo,
      required SubjectValue subject,
      required String content,
      required bool wasRead,
      required DateTime date,
      String? uid}) = _$_MailDetails;
  const _MailDetails._() : super._();

  @override
  String get fromOrTo => throw _privateConstructorUsedError;
  @override
  EmailValue get replyTo => throw _privateConstructorUsedError;
  @override
  SubjectValue get subject => throw _privateConstructorUsedError;
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
  _$MailDetailsCopyWith<_MailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
