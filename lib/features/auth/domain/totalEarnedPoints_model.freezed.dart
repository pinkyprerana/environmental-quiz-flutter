// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'totalEarnedPoints_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TotalEarnedPointsModel _$TotalEarnedPointsModelFromJson(
    Map<String, dynamic> json) {
  return _TotalEarnedPointsModel.fromJson(json);
}

/// @nodoc
mixin _$TotalEarnedPointsModel {
  int get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalEarnedPointsModelCopyWith<TotalEarnedPointsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalEarnedPointsModelCopyWith<$Res> {
  factory $TotalEarnedPointsModelCopyWith(TotalEarnedPointsModel value,
          $Res Function(TotalEarnedPointsModel) then) =
      _$TotalEarnedPointsModelCopyWithImpl<$Res, TotalEarnedPointsModel>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class _$TotalEarnedPointsModelCopyWithImpl<$Res,
        $Val extends TotalEarnedPointsModel>
    implements $TotalEarnedPointsModelCopyWith<$Res> {
  _$TotalEarnedPointsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalEarnedPointsModelImplCopyWith<$Res>
    implements $TotalEarnedPointsModelCopyWith<$Res> {
  factory _$$TotalEarnedPointsModelImplCopyWith(
          _$TotalEarnedPointsModelImpl value,
          $Res Function(_$TotalEarnedPointsModelImpl) then) =
      __$$TotalEarnedPointsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$TotalEarnedPointsModelImplCopyWithImpl<$Res>
    extends _$TotalEarnedPointsModelCopyWithImpl<$Res,
        _$TotalEarnedPointsModelImpl>
    implements _$$TotalEarnedPointsModelImplCopyWith<$Res> {
  __$$TotalEarnedPointsModelImplCopyWithImpl(
      _$TotalEarnedPointsModelImpl _value,
      $Res Function(_$TotalEarnedPointsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TotalEarnedPointsModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalEarnedPointsModelImpl implements _TotalEarnedPointsModel {
  const _$TotalEarnedPointsModelImpl({required this.data});

  factory _$TotalEarnedPointsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalEarnedPointsModelImplFromJson(json);

  @override
  final int data;

  @override
  String toString() {
    return 'TotalEarnedPointsModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalEarnedPointsModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalEarnedPointsModelImplCopyWith<_$TotalEarnedPointsModelImpl>
      get copyWith => __$$TotalEarnedPointsModelImplCopyWithImpl<
          _$TotalEarnedPointsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalEarnedPointsModelImplToJson(
      this,
    );
  }
}

abstract class _TotalEarnedPointsModel implements TotalEarnedPointsModel {
  const factory _TotalEarnedPointsModel({required final int data}) =
      _$TotalEarnedPointsModelImpl;

  factory _TotalEarnedPointsModel.fromJson(Map<String, dynamic> json) =
      _$TotalEarnedPointsModelImpl.fromJson;

  @override
  int get data;
  @override
  @JsonKey(ignore: true)
  _$$TotalEarnedPointsModelImplCopyWith<_$TotalEarnedPointsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
