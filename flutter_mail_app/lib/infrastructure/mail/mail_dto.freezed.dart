// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailDtoTearOff {
  const _$MailDtoTearOff();

  _MailDto call({required int total, required List<MailDetailsDto> details}) {
    return _MailDto(
      total: total,
      details: details,
    );
  }
}

/// @nodoc
const $MailDto = _$MailDtoTearOff();

/// @nodoc
mixin _$MailDto {
  int get total => throw _privateConstructorUsedError;
  List<MailDetailsDto> get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailDtoCopyWith<MailDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailDtoCopyWith<$Res> {
  factory $MailDtoCopyWith(MailDto value, $Res Function(MailDto) then) =
      _$MailDtoCopyWithImpl<$Res>;
  $Res call({int total, List<MailDetailsDto> details});
}

/// @nodoc
class _$MailDtoCopyWithImpl<$Res> implements $MailDtoCopyWith<$Res> {
  _$MailDtoCopyWithImpl(this._value, this._then);

  final MailDto _value;
  // ignore: unused_field
  final $Res Function(MailDto) _then;

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
              as List<MailDetailsDto>,
    ));
  }
}

/// @nodoc
abstract class _$MailDtoCopyWith<$Res> implements $MailDtoCopyWith<$Res> {
  factory _$MailDtoCopyWith(_MailDto value, $Res Function(_MailDto) then) =
      __$MailDtoCopyWithImpl<$Res>;
  @override
  $Res call({int total, List<MailDetailsDto> details});
}

/// @nodoc
class __$MailDtoCopyWithImpl<$Res> extends _$MailDtoCopyWithImpl<$Res>
    implements _$MailDtoCopyWith<$Res> {
  __$MailDtoCopyWithImpl(_MailDto _value, $Res Function(_MailDto) _then)
      : super(_value, (v) => _then(v as _MailDto));

  @override
  _MailDto get _value => super._value as _MailDto;

  @override
  $Res call({
    Object? total = freezed,
    Object? details = freezed,
  }) {
    return _then(_MailDto(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<MailDetailsDto>,
    ));
  }
}

/// @nodoc

class _$_MailDto extends _MailDto {
  const _$_MailDto({required this.total, required this.details}) : super._();

  @override
  final int total;
  @override
  final List<MailDetailsDto> details;

  @override
  String toString() {
    return 'MailDto(total: $total, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MailDto &&
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
  _$MailDtoCopyWith<_MailDto> get copyWith =>
      __$MailDtoCopyWithImpl<_MailDto>(this, _$identity);
}

abstract class _MailDto extends MailDto {
  const factory _MailDto(
      {required int total, required List<MailDetailsDto> details}) = _$_MailDto;
  const _MailDto._() : super._();

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  List<MailDetailsDto> get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MailDtoCopyWith<_MailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
