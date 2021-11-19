// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthLogoutStateTearOff {
  const _$AuthLogoutStateTearOff();

  _AuthLogoutState call({required Option<Either<Failure, void>> logout}) {
    return _AuthLogoutState(
      logout: logout,
    );
  }
}

/// @nodoc
const $AuthLogoutState = _$AuthLogoutStateTearOff();

/// @nodoc
mixin _$AuthLogoutState {
  Option<Either<Failure, void>> get logout =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthLogoutStateCopyWith<AuthLogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutStateCopyWith<$Res> {
  factory $AuthLogoutStateCopyWith(
          AuthLogoutState value, $Res Function(AuthLogoutState) then) =
      _$AuthLogoutStateCopyWithImpl<$Res>;
  $Res call({Option<Either<Failure, void>> logout});
}

/// @nodoc
class _$AuthLogoutStateCopyWithImpl<$Res>
    implements $AuthLogoutStateCopyWith<$Res> {
  _$AuthLogoutStateCopyWithImpl(this._value, this._then);

  final AuthLogoutState _value;
  // ignore: unused_field
  final $Res Function(AuthLogoutState) _then;

  @override
  $Res call({
    Object? logout = freezed,
  }) {
    return _then(_value.copyWith(
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, void>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthLogoutStateCopyWith<$Res>
    implements $AuthLogoutStateCopyWith<$Res> {
  factory _$AuthLogoutStateCopyWith(
          _AuthLogoutState value, $Res Function(_AuthLogoutState) then) =
      __$AuthLogoutStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<Failure, void>> logout});
}

/// @nodoc
class __$AuthLogoutStateCopyWithImpl<$Res>
    extends _$AuthLogoutStateCopyWithImpl<$Res>
    implements _$AuthLogoutStateCopyWith<$Res> {
  __$AuthLogoutStateCopyWithImpl(
      _AuthLogoutState _value, $Res Function(_AuthLogoutState) _then)
      : super(_value, (v) => _then(v as _AuthLogoutState));

  @override
  _AuthLogoutState get _value => super._value as _AuthLogoutState;

  @override
  $Res call({
    Object? logout = freezed,
  }) {
    return _then(_AuthLogoutState(
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, void>>,
    ));
  }
}

/// @nodoc

class _$_AuthLogoutState implements _AuthLogoutState {
  const _$_AuthLogoutState({required this.logout});

  @override
  final Option<Either<Failure, void>> logout;

  @override
  String toString() {
    return 'AuthLogoutState(logout: $logout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthLogoutState &&
            (identical(other.logout, logout) ||
                const DeepCollectionEquality().equals(other.logout, logout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(logout);

  @JsonKey(ignore: true)
  @override
  _$AuthLogoutStateCopyWith<_AuthLogoutState> get copyWith =>
      __$AuthLogoutStateCopyWithImpl<_AuthLogoutState>(this, _$identity);
}

abstract class _AuthLogoutState implements AuthLogoutState {
  const factory _AuthLogoutState(
      {required Option<Either<Failure, void>> logout}) = _$_AuthLogoutState;

  @override
  Option<Either<Failure, void>> get logout =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthLogoutStateCopyWith<_AuthLogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
