// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'side_bar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SideBarItemTearOff {
  const _$SideBarItemTearOff();

  _SideBarItem call(
      {required String label,
      IconData? icon,
      PageRouteInfo<dynamic>? routeInfo,
      List<SideBarItem>? child}) {
    return _SideBarItem(
      label: label,
      icon: icon,
      routeInfo: routeInfo,
      child: child,
    );
  }
}

/// @nodoc
const $SideBarItem = _$SideBarItemTearOff();

/// @nodoc
mixin _$SideBarItem {
  String get label => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic>? get routeInfo => throw _privateConstructorUsedError;
  List<SideBarItem>? get child => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideBarItemCopyWith<SideBarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideBarItemCopyWith<$Res> {
  factory $SideBarItemCopyWith(
          SideBarItem value, $Res Function(SideBarItem) then) =
      _$SideBarItemCopyWithImpl<$Res>;
  $Res call(
      {String label,
      IconData? icon,
      PageRouteInfo<dynamic>? routeInfo,
      List<SideBarItem>? child});
}

/// @nodoc
class _$SideBarItemCopyWithImpl<$Res> implements $SideBarItemCopyWith<$Res> {
  _$SideBarItemCopyWithImpl(this._value, this._then);

  final SideBarItem _value;
  // ignore: unused_field
  final $Res Function(SideBarItem) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
    Object? routeInfo = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      routeInfo: routeInfo == freezed
          ? _value.routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>?,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as List<SideBarItem>?,
    ));
  }
}

/// @nodoc
abstract class _$SideBarItemCopyWith<$Res>
    implements $SideBarItemCopyWith<$Res> {
  factory _$SideBarItemCopyWith(
          _SideBarItem value, $Res Function(_SideBarItem) then) =
      __$SideBarItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String label,
      IconData? icon,
      PageRouteInfo<dynamic>? routeInfo,
      List<SideBarItem>? child});
}

/// @nodoc
class __$SideBarItemCopyWithImpl<$Res> extends _$SideBarItemCopyWithImpl<$Res>
    implements _$SideBarItemCopyWith<$Res> {
  __$SideBarItemCopyWithImpl(
      _SideBarItem _value, $Res Function(_SideBarItem) _then)
      : super(_value, (v) => _then(v as _SideBarItem));

  @override
  _SideBarItem get _value => super._value as _SideBarItem;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
    Object? routeInfo = freezed,
    Object? child = freezed,
  }) {
    return _then(_SideBarItem(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      routeInfo: routeInfo == freezed
          ? _value.routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>?,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as List<SideBarItem>?,
    ));
  }
}

/// @nodoc

class _$_SideBarItem with DiagnosticableTreeMixin implements _SideBarItem {
  const _$_SideBarItem(
      {required this.label, this.icon, this.routeInfo, this.child});

  @override
  final String label;
  @override
  final IconData? icon;
  @override
  final PageRouteInfo<dynamic>? routeInfo;
  @override
  final List<SideBarItem>? child;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SideBarItem(label: $label, icon: $icon, routeInfo: $routeInfo, child: $child)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SideBarItem'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('routeInfo', routeInfo))
      ..add(DiagnosticsProperty('child', child));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SideBarItem &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.routeInfo, routeInfo) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(routeInfo),
      const DeepCollectionEquality().hash(child));

  @JsonKey(ignore: true)
  @override
  _$SideBarItemCopyWith<_SideBarItem> get copyWith =>
      __$SideBarItemCopyWithImpl<_SideBarItem>(this, _$identity);
}

abstract class _SideBarItem implements SideBarItem {
  const factory _SideBarItem(
      {required String label,
      IconData? icon,
      PageRouteInfo<dynamic>? routeInfo,
      List<SideBarItem>? child}) = _$_SideBarItem;

  @override
  String get label;
  @override
  IconData? get icon;
  @override
  PageRouteInfo<dynamic>? get routeInfo;
  @override
  List<SideBarItem>? get child;
  @override
  @JsonKey(ignore: true)
  _$SideBarItemCopyWith<_SideBarItem> get copyWith =>
      throw _privateConstructorUsedError;
}
