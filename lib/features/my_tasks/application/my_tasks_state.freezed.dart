// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyTasksState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CompletedTasks> get completedTasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyTasksStateCopyWith<MyTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyTasksStateCopyWith<$Res> {
  factory $MyTasksStateCopyWith(
          MyTasksState value, $Res Function(MyTasksState) then) =
      _$MyTasksStateCopyWithImpl<$Res, MyTasksState>;
  @useResult
  $Res call({bool isLoading, List<CompletedTasks> completedTasks});
}

/// @nodoc
class _$MyTasksStateCopyWithImpl<$Res, $Val extends MyTasksState>
    implements $MyTasksStateCopyWith<$Res> {
  _$MyTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? completedTasks = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      completedTasks: null == completedTasks
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyTasksStateImplCopyWith<$Res>
    implements $MyTasksStateCopyWith<$Res> {
  factory _$$MyTasksStateImplCopyWith(
          _$MyTasksStateImpl value, $Res Function(_$MyTasksStateImpl) then) =
      __$$MyTasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<CompletedTasks> completedTasks});
}

/// @nodoc
class __$$MyTasksStateImplCopyWithImpl<$Res>
    extends _$MyTasksStateCopyWithImpl<$Res, _$MyTasksStateImpl>
    implements _$$MyTasksStateImplCopyWith<$Res> {
  __$$MyTasksStateImplCopyWithImpl(
      _$MyTasksStateImpl _value, $Res Function(_$MyTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? completedTasks = null,
  }) {
    return _then(_$MyTasksStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      completedTasks: null == completedTasks
          ? _value._completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
    ));
  }
}

/// @nodoc

class _$MyTasksStateImpl extends _MyTasksState {
  const _$MyTasksStateImpl(
      {this.isLoading = false,
      final List<CompletedTasks> completedTasks = const []})
      : _completedTasks = completedTasks,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<CompletedTasks> _completedTasks;
  @override
  @JsonKey()
  List<CompletedTasks> get completedTasks {
    if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTasks);
  }

  @override
  String toString() {
    return 'MyTasksState(isLoading: $isLoading, completedTasks: $completedTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyTasksStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._completedTasks, _completedTasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_completedTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyTasksStateImplCopyWith<_$MyTasksStateImpl> get copyWith =>
      __$$MyTasksStateImplCopyWithImpl<_$MyTasksStateImpl>(this, _$identity);
}

abstract class _MyTasksState extends MyTasksState {
  const factory _MyTasksState(
      {final bool isLoading,
      final List<CompletedTasks> completedTasks}) = _$MyTasksStateImpl;
  const _MyTasksState._() : super._();

  @override
  bool get isLoading;
  @override
  List<CompletedTasks> get completedTasks;
  @override
  @JsonKey(ignore: true)
  _$$MyTasksStateImplCopyWith<_$MyTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
