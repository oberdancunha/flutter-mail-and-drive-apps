// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeState call(
      {required ThemeData theme,
      required bool wasSearched,
      required int themeSourceId}) {
    return _ThemeState(
      theme: theme,
      wasSearched: wasSearched,
      themeSourceId: themeSourceId,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeData get theme => throw _privateConstructorUsedError;
  bool get wasSearched => throw _privateConstructorUsedError;
  int get themeSourceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData theme, bool wasSearched, int themeSourceId});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? wasSearched = freezed,
    Object? themeSourceId = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      wasSearched: wasSearched == freezed
          ? _value.wasSearched
          : wasSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      themeSourceId: themeSourceId == freezed
          ? _value.themeSourceId
          : themeSourceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData theme, bool wasSearched, int themeSourceId});
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object? theme = freezed,
    Object? wasSearched = freezed,
    Object? themeSourceId = freezed,
  }) {
    return _then(_ThemeState(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      wasSearched: wasSearched == freezed
          ? _value.wasSearched
          : wasSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      themeSourceId: themeSourceId == freezed
          ? _value.themeSourceId
          : themeSourceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState(
      {required this.theme,
      required this.wasSearched,
      required this.themeSourceId});

  @override
  final ThemeData theme;
  @override
  final bool wasSearched;
  @override
  final int themeSourceId;

  @override
  String toString() {
    return 'ThemeState(theme: $theme, wasSearched: $wasSearched, themeSourceId: $themeSourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.wasSearched, wasSearched) ||
                const DeepCollectionEquality()
                    .equals(other.wasSearched, wasSearched)) &&
            (identical(other.themeSourceId, themeSourceId) ||
                const DeepCollectionEquality()
                    .equals(other.themeSourceId, themeSourceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(wasSearched) ^
      const DeepCollectionEquality().hash(themeSourceId);

  @JsonKey(ignore: true)
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {required ThemeData theme,
      required bool wasSearched,
      required int themeSourceId}) = _$_ThemeState;

  @override
  ThemeData get theme => throw _privateConstructorUsedError;
  @override
  bool get wasSearched => throw _privateConstructorUsedError;
  @override
  int get themeSourceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
