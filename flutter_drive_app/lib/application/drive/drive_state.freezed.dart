// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriveStateTearOff {
  const _$DriveStateTearOff();

  _DriveState call({required KtList<Drive> files, String? term}) {
    return _DriveState(
      files: files,
      term: term,
    );
  }
}

/// @nodoc
const $DriveState = _$DriveStateTearOff();

/// @nodoc
mixin _$DriveState {
  KtList<Drive> get files => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriveStateCopyWith<DriveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriveStateCopyWith<$Res> {
  factory $DriveStateCopyWith(
          DriveState value, $Res Function(DriveState) then) =
      _$DriveStateCopyWithImpl<$Res>;
  $Res call({KtList<Drive> files, String? term});
}

/// @nodoc
class _$DriveStateCopyWithImpl<$Res> implements $DriveStateCopyWith<$Res> {
  _$DriveStateCopyWithImpl(this._value, this._then);

  final DriveState _value;
  // ignore: unused_field
  final $Res Function(DriveState) _then;

  @override
  $Res call({
    Object? files = freezed,
    Object? term = freezed,
  }) {
    return _then(_value.copyWith(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as KtList<Drive>,
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DriveStateCopyWith<$Res> implements $DriveStateCopyWith<$Res> {
  factory _$DriveStateCopyWith(
          _DriveState value, $Res Function(_DriveState) then) =
      __$DriveStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Drive> files, String? term});
}

/// @nodoc
class __$DriveStateCopyWithImpl<$Res> extends _$DriveStateCopyWithImpl<$Res>
    implements _$DriveStateCopyWith<$Res> {
  __$DriveStateCopyWithImpl(
      _DriveState _value, $Res Function(_DriveState) _then)
      : super(_value, (v) => _then(v as _DriveState));

  @override
  _DriveState get _value => super._value as _DriveState;

  @override
  $Res call({
    Object? files = freezed,
    Object? term = freezed,
  }) {
    return _then(_DriveState(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as KtList<Drive>,
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DriveState extends _DriveState {
  const _$_DriveState({required this.files, this.term}) : super._();

  @override
  final KtList<Drive> files;
  @override
  final String? term;

  @override
  String toString() {
    return 'DriveState(files: $files, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriveState &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  _$DriveStateCopyWith<_DriveState> get copyWith =>
      __$DriveStateCopyWithImpl<_DriveState>(this, _$identity);
}

abstract class _DriveState extends DriveState {
  const factory _DriveState({required KtList<Drive> files, String? term}) =
      _$_DriveState;
  const _DriveState._() : super._();

  @override
  KtList<Drive> get files => throw _privateConstructorUsedError;
  @override
  String? get term => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriveStateCopyWith<_DriveState> get copyWith =>
      throw _privateConstructorUsedError;
}
