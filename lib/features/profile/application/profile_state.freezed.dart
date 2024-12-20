// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  ProfileModel? get profileModel => throw _privateConstructorUsedError;
  List<MyTasksModel> get myTasksList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      ProfileModel? profileModel,
      List<MyTasksModel> myTasksList});

  $ProfileModelCopyWith<$Res>? get profileModel;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profileModel = freezed,
    Object? myTasksList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      myTasksList: null == myTasksList
          ? _value.myTasksList
          : myTasksList // ignore: cast_nullable_to_non_nullable
              as List<MyTasksModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get profileModel {
    if (_value.profileModel == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profileModel!, (value) {
      return _then(_value.copyWith(profileModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ProfileModel? profileModel,
      List<MyTasksModel> myTasksList});

  @override
  $ProfileModelCopyWith<$Res>? get profileModel;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? profileModel = freezed,
    Object? myTasksList = null,
  }) {
    return _then(_$ProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      myTasksList: null == myTasksList
          ? _value._myTasksList
          : myTasksList // ignore: cast_nullable_to_non_nullable
              as List<MyTasksModel>,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.isLoading = false,
      this.profileModel = const ProfileModel(),
      final List<MyTasksModel> myTasksList = const []})
      : _myTasksList = myTasksList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final ProfileModel? profileModel;
  final List<MyTasksModel> _myTasksList;
  @override
  @JsonKey()
  List<MyTasksModel> get myTasksList {
    if (_myTasksList is EqualUnmodifiableListView) return _myTasksList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myTasksList);
  }

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, profileModel: $profileModel, myTasksList: $myTasksList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.profileModel, profileModel) ||
                other.profileModel == profileModel) &&
            const DeepCollectionEquality()
                .equals(other._myTasksList, _myTasksList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, profileModel,
      const DeepCollectionEquality().hash(_myTasksList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isLoading,
      final ProfileModel? profileModel,
      final List<MyTasksModel> myTasksList}) = _$ProfileStateImpl;

  @override
  bool get isLoading;
  @override
  ProfileModel? get profileModel;
  @override
  List<MyTasksModel> get myTasksList;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
