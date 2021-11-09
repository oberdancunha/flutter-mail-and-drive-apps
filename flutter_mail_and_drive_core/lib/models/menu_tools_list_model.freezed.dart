// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_tools_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuToolsListModelTearOff {
  const _$MenuToolsListModelTearOff();

  _MenuToolsListModel call(
      {required String path,
      required IconData iconData,
      required String label}) {
    return _MenuToolsListModel(
      path: path,
      iconData: iconData,
      label: label,
    );
  }
}

/// @nodoc
const $MenuToolsListModel = _$MenuToolsListModelTearOff();

/// @nodoc
mixin _$MenuToolsListModel {
  String get path => throw _privateConstructorUsedError;
  IconData get iconData => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuToolsListModelCopyWith<MenuToolsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuToolsListModelCopyWith<$Res> {
  factory $MenuToolsListModelCopyWith(
          MenuToolsListModel value, $Res Function(MenuToolsListModel) then) =
      _$MenuToolsListModelCopyWithImpl<$Res>;
  $Res call({String path, IconData iconData, String label});
}

/// @nodoc
class _$MenuToolsListModelCopyWithImpl<$Res>
    implements $MenuToolsListModelCopyWith<$Res> {
  _$MenuToolsListModelCopyWithImpl(this._value, this._then);

  final MenuToolsListModel _value;
  // ignore: unused_field
  final $Res Function(MenuToolsListModel) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? iconData = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MenuToolsListModelCopyWith<$Res>
    implements $MenuToolsListModelCopyWith<$Res> {
  factory _$MenuToolsListModelCopyWith(
          _MenuToolsListModel value, $Res Function(_MenuToolsListModel) then) =
      __$MenuToolsListModelCopyWithImpl<$Res>;
  @override
  $Res call({String path, IconData iconData, String label});
}

/// @nodoc
class __$MenuToolsListModelCopyWithImpl<$Res>
    extends _$MenuToolsListModelCopyWithImpl<$Res>
    implements _$MenuToolsListModelCopyWith<$Res> {
  __$MenuToolsListModelCopyWithImpl(
      _MenuToolsListModel _value, $Res Function(_MenuToolsListModel) _then)
      : super(_value, (v) => _then(v as _MenuToolsListModel));

  @override
  _MenuToolsListModel get _value => super._value as _MenuToolsListModel;

  @override
  $Res call({
    Object? path = freezed,
    Object? iconData = freezed,
    Object? label = freezed,
  }) {
    return _then(_MenuToolsListModel(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MenuToolsListModel extends _MenuToolsListModel {
  const _$_MenuToolsListModel(
      {required this.path, required this.iconData, required this.label})
      : super._();

  @override
  final String path;
  @override
  final IconData iconData;
  @override
  final String label;

  @override
  String toString() {
    return 'MenuToolsListModel(path: $path, iconData: $iconData, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuToolsListModel &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$MenuToolsListModelCopyWith<_MenuToolsListModel> get copyWith =>
      __$MenuToolsListModelCopyWithImpl<_MenuToolsListModel>(this, _$identity);
}

abstract class _MenuToolsListModel extends MenuToolsListModel {
  const factory _MenuToolsListModel(
      {required String path,
      required IconData iconData,
      required String label}) = _$_MenuToolsListModel;
  const _MenuToolsListModel._() : super._();

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  IconData get iconData => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuToolsListModelCopyWith<_MenuToolsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
