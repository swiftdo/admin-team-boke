// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return _TokenModel.fromJson(json);
}

/// @nodoc
class _$TokenModelTearOff {
  const _$TokenModelTearOff();

  _TokenModel call(
      {required String accessToken,
      required double expiresAt,
      required String refreshToken}) {
    return _TokenModel(
      accessToken: accessToken,
      expiresAt: expiresAt,
      refreshToken: refreshToken,
    );
  }

  TokenModel fromJson(Map<String, Object?> json) {
    return TokenModel.fromJson(json);
  }
}

/// @nodoc
const $TokenModel = _$TokenModelTearOff();

/// @nodoc
mixin _$TokenModel {
  String get accessToken => throw _privateConstructorUsedError;
  double get expiresAt => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelCopyWith<TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelCopyWith<$Res> {
  factory $TokenModelCopyWith(
          TokenModel value, $Res Function(TokenModel) then) =
      _$TokenModelCopyWithImpl<$Res>;
  $Res call({String accessToken, double expiresAt, String refreshToken});
}

/// @nodoc
class _$TokenModelCopyWithImpl<$Res> implements $TokenModelCopyWith<$Res> {
  _$TokenModelCopyWithImpl(this._value, this._then);

  final TokenModel _value;
  // ignore: unused_field
  final $Res Function(TokenModel) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiresAt = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as double,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenModelCopyWith<$Res> implements $TokenModelCopyWith<$Res> {
  factory _$TokenModelCopyWith(
          _TokenModel value, $Res Function(_TokenModel) then) =
      __$TokenModelCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, double expiresAt, String refreshToken});
}

/// @nodoc
class __$TokenModelCopyWithImpl<$Res> extends _$TokenModelCopyWithImpl<$Res>
    implements _$TokenModelCopyWith<$Res> {
  __$TokenModelCopyWithImpl(
      _TokenModel _value, $Res Function(_TokenModel) _then)
      : super(_value, (v) => _then(v as _TokenModel));

  @override
  _TokenModel get _value => super._value as _TokenModel;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiresAt = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_TokenModel(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as double,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenModel with DiagnosticableTreeMixin implements _TokenModel {
  const _$_TokenModel(
      {required this.accessToken,
      required this.expiresAt,
      required this.refreshToken});

  factory _$_TokenModel.fromJson(Map<String, dynamic> json) =>
      _$$_TokenModelFromJson(json);

  @override
  final String accessToken;
  @override
  final double expiresAt;
  @override
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TokenModel(accessToken: $accessToken, expiresAt: $expiresAt, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokenModel'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('expiresAt', expiresAt))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenModel &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(expiresAt),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      __$TokenModelCopyWithImpl<_TokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenModelToJson(this);
  }
}

abstract class _TokenModel implements TokenModel {
  const factory _TokenModel(
      {required String accessToken,
      required double expiresAt,
      required String refreshToken}) = _$_TokenModel;

  factory _TokenModel.fromJson(Map<String, dynamic> json) =
      _$_TokenModel.fromJson;

  @override
  String get accessToken;
  @override
  double get expiresAt;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$TokenModelCopyWith<_TokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
