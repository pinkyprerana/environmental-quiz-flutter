// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  TotalEarnedPointsModel? get totalEarnedPoints =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool checked,
      bool rememberMe,
      String token,
      TotalEarnedPointsModel? totalEarnedPoints});

  $TotalEarnedPointsModelCopyWith<$Res>? get totalEarnedPoints;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checked = null,
    Object? rememberMe = null,
    Object? token = null,
    Object? totalEarnedPoints = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      totalEarnedPoints: freezed == totalEarnedPoints
          ? _value.totalEarnedPoints
          : totalEarnedPoints // ignore: cast_nullable_to_non_nullable
              as TotalEarnedPointsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalEarnedPointsModelCopyWith<$Res>? get totalEarnedPoints {
    if (_value.totalEarnedPoints == null) {
      return null;
    }

    return $TotalEarnedPointsModelCopyWith<$Res>(_value.totalEarnedPoints!,
        (value) {
      return _then(_value.copyWith(totalEarnedPoints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool checked,
      bool rememberMe,
      String token,
      TotalEarnedPointsModel? totalEarnedPoints});

  @override
  $TotalEarnedPointsModelCopyWith<$Res>? get totalEarnedPoints;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checked = null,
    Object? rememberMe = null,
    Object? token = null,
    Object? totalEarnedPoints = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      totalEarnedPoints: freezed == totalEarnedPoints
          ? _value.totalEarnedPoints
          : totalEarnedPoints // ignore: cast_nullable_to_non_nullable
              as TotalEarnedPointsModel?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {this.isLoading = false,
      this.checked = false,
      this.rememberMe = false,
      this.token = '',
      this.totalEarnedPoints})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool checked;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  @JsonKey()
  final String token;
  @override
  final TotalEarnedPointsModel? totalEarnedPoints;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, checked: $checked, rememberMe: $rememberMe, token: $token, totalEarnedPoints: $totalEarnedPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.checked, checked) || other.checked == checked) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.totalEarnedPoints, totalEarnedPoints) ||
                other.totalEarnedPoints == totalEarnedPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, checked, rememberMe, token, totalEarnedPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool checked,
      final bool rememberMe,
      final String token,
      final TotalEarnedPointsModel? totalEarnedPoints}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get checked;
  @override
  bool get rememberMe;
  @override
  String get token;
  @override
  TotalEarnedPointsModel? get totalEarnedPoints;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
