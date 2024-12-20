// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignedTasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignedTasksState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DataOfAssignedTasks> get assignedTasks =>
      throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignedTasksStateCopyWith<AssignedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedTasksStateCopyWith<$Res> {
  factory $AssignedTasksStateCopyWith(
          AssignedTasksState value, $Res Function(AssignedTasksState) then) =
      _$AssignedTasksStateCopyWithImpl<$Res, AssignedTasksState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<DataOfAssignedTasks> assignedTasks,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class _$AssignedTasksStateCopyWithImpl<$Res, $Val extends AssignedTasksState>
    implements $AssignedTasksStateCopyWith<$Res> {
  _$AssignedTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? assignedTasks = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      assignedTasks: null == assignedTasks
          ? _value.assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAssignedTasks>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignedTasksStateImplCopyWith<$Res>
    implements $AssignedTasksStateCopyWith<$Res> {
  factory _$$AssignedTasksStateImplCopyWith(_$AssignedTasksStateImpl value,
          $Res Function(_$AssignedTasksStateImpl) then) =
      __$$AssignedTasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<DataOfAssignedTasks> assignedTasks,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class __$$AssignedTasksStateImplCopyWithImpl<$Res>
    extends _$AssignedTasksStateCopyWithImpl<$Res, _$AssignedTasksStateImpl>
    implements _$$AssignedTasksStateImplCopyWith<$Res> {
  __$$AssignedTasksStateImplCopyWithImpl(_$AssignedTasksStateImpl _value,
      $Res Function(_$AssignedTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? assignedTasks = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(_$AssignedTasksStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      assignedTasks: null == assignedTasks
          ? _value._assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAssignedTasks>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AssignedTasksStateImpl extends _AssignedTasksState {
  _$AssignedTasksStateImpl(
      {this.isLoading = false,
      required final List<DataOfAssignedTasks> assignedTasks,
      required this.total,
      required this.page,
      required this.pages,
      required this.limit})
      : _assignedTasks = assignedTasks,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<DataOfAssignedTasks> _assignedTasks;
  @override
  List<DataOfAssignedTasks> get assignedTasks {
    if (_assignedTasks is EqualUnmodifiableListView) return _assignedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedTasks);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final int limit;

  @override
  String toString() {
    return 'AssignedTasksState(isLoading: $isLoading, assignedTasks: $assignedTasks, total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedTasksStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._assignedTasks, _assignedTasks) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_assignedTasks),
      total,
      page,
      pages,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedTasksStateImplCopyWith<_$AssignedTasksStateImpl> get copyWith =>
      __$$AssignedTasksStateImplCopyWithImpl<_$AssignedTasksStateImpl>(
          this, _$identity);
}

abstract class _AssignedTasksState extends AssignedTasksState {
  factory _AssignedTasksState(
      {final bool isLoading,
      required final List<DataOfAssignedTasks> assignedTasks,
      required final int total,
      required final int page,
      required final int pages,
      required final int limit}) = _$AssignedTasksStateImpl;
  _AssignedTasksState._() : super._();

  @override
  bool get isLoading;
  @override
  List<DataOfAssignedTasks> get assignedTasks;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$AssignedTasksStateImplCopyWith<_$AssignedTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
