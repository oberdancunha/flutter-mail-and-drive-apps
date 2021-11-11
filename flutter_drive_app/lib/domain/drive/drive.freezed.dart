// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriveTearOff {
  const _$DriveTearOff();

  _Drive call(
      {required String name,
      required FileExtension extension,
      required double fileSize,
      required DateTime createdAt}) {
    return _Drive(
      name: name,
      extension: extension,
      fileSize: fileSize,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $Drive = _$DriveTearOff();

/// @nodoc
mixin _$Drive {
  String get name => throw _privateConstructorUsedError;
  FileExtension get extension => throw _privateConstructorUsedError;
  double get fileSize => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriveCopyWith<Drive> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriveCopyWith<$Res> {
  factory $DriveCopyWith(Drive value, $Res Function(Drive) then) =
      _$DriveCopyWithImpl<$Res>;
  $Res call(
      {String name,
      FileExtension extension,
      double fileSize,
      DateTime createdAt});

  $FileExtensionCopyWith<$Res> get extension;
}

/// @nodoc
class _$DriveCopyWithImpl<$Res> implements $DriveCopyWith<$Res> {
  _$DriveCopyWithImpl(this._value, this._then);

  final Drive _value;
  // ignore: unused_field
  final $Res Function(Drive) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? extension = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as FileExtension,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $FileExtensionCopyWith<$Res> get extension {
    return $FileExtensionCopyWith<$Res>(_value.extension, (value) {
      return _then(_value.copyWith(extension: value));
    });
  }
}

/// @nodoc
abstract class _$DriveCopyWith<$Res> implements $DriveCopyWith<$Res> {
  factory _$DriveCopyWith(_Drive value, $Res Function(_Drive) then) =
      __$DriveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      FileExtension extension,
      double fileSize,
      DateTime createdAt});

  @override
  $FileExtensionCopyWith<$Res> get extension;
}

/// @nodoc
class __$DriveCopyWithImpl<$Res> extends _$DriveCopyWithImpl<$Res>
    implements _$DriveCopyWith<$Res> {
  __$DriveCopyWithImpl(_Drive _value, $Res Function(_Drive) _then)
      : super(_value, (v) => _then(v as _Drive));

  @override
  _Drive get _value => super._value as _Drive;

  @override
  $Res call({
    Object? name = freezed,
    Object? extension = freezed,
    Object? fileSize = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Drive(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as FileExtension,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Drive extends _Drive {
  const _$_Drive(
      {required this.name,
      required this.extension,
      required this.fileSize,
      required this.createdAt})
      : super._();

  @override
  final String name;
  @override
  final FileExtension extension;
  @override
  final double fileSize;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Drive(name: $name, extension: $extension, fileSize: $fileSize, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Drive &&
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
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(fileSize) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$DriveCopyWith<_Drive> get copyWith =>
      __$DriveCopyWithImpl<_Drive>(this, _$identity);
}

abstract class _Drive extends Drive {
  const factory _Drive(
      {required String name,
      required FileExtension extension,
      required double fileSize,
      required DateTime createdAt}) = _$_Drive;
  const _Drive._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  FileExtension get extension => throw _privateConstructorUsedError;
  @override
  double get fileSize => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriveCopyWith<_Drive> get copyWith => throw _privateConstructorUsedError;
}
