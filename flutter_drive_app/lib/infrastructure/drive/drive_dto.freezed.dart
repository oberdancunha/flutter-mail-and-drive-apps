// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drive_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriveDtoTearOff {
  const _$DriveDtoTearOff();

  _DriveDto call(
      {required String name,
      required String extension,
      required double fileSize,
      required String createdAt,
      List<String>? shared}) {
    return _DriveDto(
      name: name,
      extension: extension,
      fileSize: fileSize,
      createdAt: createdAt,
      shared: shared,
    );
  }
}

/// @nodoc
const $DriveDto = _$DriveDtoTearOff();

/// @nodoc
mixin _$DriveDto {
  String get name => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  double get fileSize => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<String>? get shared => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriveDtoCopyWith<DriveDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriveDtoCopyWith<$Res> {
  factory $DriveDtoCopyWith(DriveDto value, $Res Function(DriveDto) then) =
      _$DriveDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String extension,
      double fileSize,
      String createdAt,
      List<String>? shared});
}

/// @nodoc
class _$DriveDtoCopyWithImpl<$Res> implements $DriveDtoCopyWith<$Res> {
  _$DriveDtoCopyWithImpl(this._value, this._then);

  final DriveDto _value;
  // ignore: unused_field
  final $Res Function(DriveDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? extension = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
    Object? shared = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      shared: shared == freezed
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$DriveDtoCopyWith<$Res> implements $DriveDtoCopyWith<$Res> {
  factory _$DriveDtoCopyWith(_DriveDto value, $Res Function(_DriveDto) then) =
      __$DriveDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String extension,
      double fileSize,
      String createdAt,
      List<String>? shared});
}

/// @nodoc
class __$DriveDtoCopyWithImpl<$Res> extends _$DriveDtoCopyWithImpl<$Res>
    implements _$DriveDtoCopyWith<$Res> {
  __$DriveDtoCopyWithImpl(_DriveDto _value, $Res Function(_DriveDto) _then)
      : super(_value, (v) => _then(v as _DriveDto));

  @override
  _DriveDto get _value => super._value as _DriveDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? extension = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
    Object? shared = freezed,
  }) {
    return _then(_DriveDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      shared: shared == freezed
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_DriveDto extends _DriveDto {
  const _$_DriveDto(
      {required this.name,
      required this.extension,
      required this.fileSize,
      required this.createdAt,
      this.shared})
      : super._();

  @override
  final String name;
  @override
  final String extension;
  @override
  final double fileSize;
  @override
  final String createdAt;
  @override
  final List<String>? shared;

  @override
  String toString() {
    return 'DriveDto(name: $name, extension: $extension, fileSize: $fileSize, createdAt: $createdAt, shared: $shared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriveDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)) &&
            (identical(other.fileSize, fileSize) ||
                const DeepCollectionEquality()
                    .equals(other.fileSize, fileSize)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.shared, shared) ||
                const DeepCollectionEquality().equals(other.shared, shared)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(fileSize) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(shared);

  @JsonKey(ignore: true)
  @override
  _$DriveDtoCopyWith<_DriveDto> get copyWith =>
      __$DriveDtoCopyWithImpl<_DriveDto>(this, _$identity);
}

abstract class _DriveDto extends DriveDto {
  const factory _DriveDto(
      {required String name,
      required String extension,
      required double fileSize,
      required String createdAt,
      List<String>? shared}) = _$_DriveDto;
  const _DriveDto._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get extension => throw _privateConstructorUsedError;
  @override
  double get fileSize => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  List<String>? get shared => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriveDtoCopyWith<_DriveDto> get copyWith =>
      throw _privateConstructorUsedError;
}
