// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailStateTearOff {
  const _$MailStateTearOff();

  _MailState call(
      {required Mail mails,
      required int initialData,
      required int lastData,
      required int dataPerPage,
      String? term}) {
    return _MailState(
      mails: mails,
      initialData: initialData,
      lastData: lastData,
      dataPerPage: dataPerPage,
      term: term,
    );
  }
}

/// @nodoc
const $MailState = _$MailStateTearOff();

/// @nodoc
mixin _$MailState {
  Mail get mails => throw _privateConstructorUsedError;
  int get initialData => throw _privateConstructorUsedError;
  int get lastData => throw _privateConstructorUsedError;
  int get dataPerPage => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailStateCopyWith<MailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailStateCopyWith<$Res> {
  factory $MailStateCopyWith(MailState value, $Res Function(MailState) then) =
      _$MailStateCopyWithImpl<$Res>;
  $Res call(
      {Mail mails,
      int initialData,
      int lastData,
      int dataPerPage,
      String? term});

  $MailCopyWith<$Res> get mails;
}

/// @nodoc
class _$MailStateCopyWithImpl<$Res> implements $MailStateCopyWith<$Res> {
  _$MailStateCopyWithImpl(this._value, this._then);

  final MailState _value;
  // ignore: unused_field
  final $Res Function(MailState) _then;

  @override
  $Res call({
    Object? mails = freezed,
    Object? initialData = freezed,
    Object? lastData = freezed,
    Object? dataPerPage = freezed,
    Object? term = freezed,
  }) {
    return _then(_value.copyWith(
      mails: mails == freezed
          ? _value.mails
          : mails // ignore: cast_nullable_to_non_nullable
              as Mail,
      initialData: initialData == freezed
          ? _value.initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as int,
      lastData: lastData == freezed
          ? _value.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as int,
      dataPerPage: dataPerPage == freezed
          ? _value.dataPerPage
          : dataPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $MailCopyWith<$Res> get mails {
    return $MailCopyWith<$Res>(_value.mails, (value) {
      return _then(_value.copyWith(mails: value));
    });
  }
}

/// @nodoc
abstract class _$MailStateCopyWith<$Res> implements $MailStateCopyWith<$Res> {
  factory _$MailStateCopyWith(
          _MailState value, $Res Function(_MailState) then) =
      __$MailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Mail mails,
      int initialData,
      int lastData,
      int dataPerPage,
      String? term});

  @override
  $MailCopyWith<$Res> get mails;
}

/// @nodoc
class __$MailStateCopyWithImpl<$Res> extends _$MailStateCopyWithImpl<$Res>
    implements _$MailStateCopyWith<$Res> {
  __$MailStateCopyWithImpl(_MailState _value, $Res Function(_MailState) _then)
      : super(_value, (v) => _then(v as _MailState));

  @override
  _MailState get _value => super._value as _MailState;

  @override
  $Res call({
    Object? mails = freezed,
    Object? initialData = freezed,
    Object? lastData = freezed,
    Object? dataPerPage = freezed,
    Object? term = freezed,
  }) {
    return _then(_MailState(
      mails: mails == freezed
          ? _value.mails
          : mails // ignore: cast_nullable_to_non_nullable
              as Mail,
      initialData: initialData == freezed
          ? _value.initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as int,
      lastData: lastData == freezed
          ? _value.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as int,
      dataPerPage: dataPerPage == freezed
          ? _value.dataPerPage
          : dataPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MailState implements _MailState {
  const _$_MailState(
      {required this.mails,
      required this.initialData,
      required this.lastData,
      required this.dataPerPage,
      this.term});

  @override
  final Mail mails;
  @override
  final int initialData;
  @override
  final int lastData;
  @override
  final int dataPerPage;
  @override
  final String? term;

  @override
  String toString() {
    return 'MailState(mails: $mails, initialData: $initialData, lastData: $lastData, dataPerPage: $dataPerPage, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailState &&
            (identical(other.mails, mails) ||
                const DeepCollectionEquality().equals(other.mails, mails)) &&
            (identical(other.initialData, initialData) ||
                const DeepCollectionEquality()
                    .equals(other.initialData, initialData)) &&
            (identical(other.lastData, lastData) ||
                const DeepCollectionEquality()
                    .equals(other.lastData, lastData)) &&
            (identical(other.dataPerPage, dataPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.dataPerPage, dataPerPage)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mails) ^
      const DeepCollectionEquality().hash(initialData) ^
      const DeepCollectionEquality().hash(lastData) ^
      const DeepCollectionEquality().hash(dataPerPage) ^
      const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  _$MailStateCopyWith<_MailState> get copyWith =>
      __$MailStateCopyWithImpl<_MailState>(this, _$identity);
}

abstract class _MailState implements MailState {
  const factory _MailState(
      {required Mail mails,
      required int initialData,
      required int lastData,
      required int dataPerPage,
      String? term}) = _$_MailState;

  @override
  Mail get mails => throw _privateConstructorUsedError;
  @override
  int get initialData => throw _privateConstructorUsedError;
  @override
  int get lastData => throw _privateConstructorUsedError;
  @override
  int get dataPerPage => throw _privateConstructorUsedError;
  @override
  String? get term => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailStateCopyWith<_MailState> get copyWith =>
      throw _privateConstructorUsedError;
}
