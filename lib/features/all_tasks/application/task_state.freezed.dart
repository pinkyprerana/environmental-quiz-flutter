// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllTasksState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DataOfAllTasks> get tasks => throw _privateConstructorUsedError;
  List<DataOfAssignedTasks> get assignedTasks =>
      throw _privateConstructorUsedError;
  List<CompletedTasks> get completedTasks => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  DataOfAllTasks? get selectedTask => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllTasksStateCopyWith<AllTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTasksStateCopyWith<$Res> {
  factory $AllTasksStateCopyWith(
          AllTasksState value, $Res Function(AllTasksState) then) =
      _$AllTasksStateCopyWithImpl<$Res, AllTasksState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<DataOfAllTasks> tasks,
      List<DataOfAssignedTasks> assignedTasks,
      List<CompletedTasks> completedTasks,
      int total,
      int page,
      DataOfAllTasks? selectedTask,
      int pages,
      int limit});

  $DataOfAllTasksCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class _$AllTasksStateCopyWithImpl<$Res, $Val extends AllTasksState>
    implements $AllTasksStateCopyWith<$Res> {
  _$AllTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? assignedTasks = null,
    Object? completedTasks = null,
    Object? total = null,
    Object? page = null,
    Object? selectedTask = freezed,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAllTasks>,
      assignedTasks: null == assignedTasks
          ? _value.assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAssignedTasks>,
      completedTasks: null == completedTasks
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTask: freezed == selectedTask
          ? _value.selectedTask
          : selectedTask // ignore: cast_nullable_to_non_nullable
              as DataOfAllTasks?,
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

  @override
  @pragma('vm:prefer-inline')
  $DataOfAllTasksCopyWith<$Res>? get selectedTask {
    if (_value.selectedTask == null) {
      return null;
    }

    return $DataOfAllTasksCopyWith<$Res>(_value.selectedTask!, (value) {
      return _then(_value.copyWith(selectedTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllTasksStateImplCopyWith<$Res>
    implements $AllTasksStateCopyWith<$Res> {
  factory _$$AllTasksStateImplCopyWith(
          _$AllTasksStateImpl value, $Res Function(_$AllTasksStateImpl) then) =
      __$$AllTasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<DataOfAllTasks> tasks,
      List<DataOfAssignedTasks> assignedTasks,
      List<CompletedTasks> completedTasks,
      int total,
      int page,
      DataOfAllTasks? selectedTask,
      int pages,
      int limit});

  @override
  $DataOfAllTasksCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class __$$AllTasksStateImplCopyWithImpl<$Res>
    extends _$AllTasksStateCopyWithImpl<$Res, _$AllTasksStateImpl>
    implements _$$AllTasksStateImplCopyWith<$Res> {
  __$$AllTasksStateImplCopyWithImpl(
      _$AllTasksStateImpl _value, $Res Function(_$AllTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? tasks = null,
    Object? assignedTasks = null,
    Object? completedTasks = null,
    Object? total = null,
    Object? page = null,
    Object? selectedTask = freezed,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(_$AllTasksStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAllTasks>,
      assignedTasks: null == assignedTasks
          ? _value._assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as List<DataOfAssignedTasks>,
      completedTasks: null == completedTasks
          ? _value._completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTask: freezed == selectedTask
          ? _value.selectedTask
          : selectedTask // ignore: cast_nullable_to_non_nullable
              as DataOfAllTasks?,
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

class _$AllTasksStateImpl extends _AllTasksState {
  _$AllTasksStateImpl(
      {this.isLoading = false,
      required final List<DataOfAllTasks> tasks,
      final List<DataOfAssignedTasks> assignedTasks = const [],
      final List<CompletedTasks> completedTasks = const [],
      required this.total,
      required this.page,
      this.selectedTask,
      required this.pages,
      required this.limit})
      : _tasks = tasks,
        _assignedTasks = assignedTasks,
        _completedTasks = completedTasks,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<DataOfAllTasks> _tasks;
  @override
  List<DataOfAllTasks> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<DataOfAssignedTasks> _assignedTasks;
  @override
  @JsonKey()
  List<DataOfAssignedTasks> get assignedTasks {
    if (_assignedTasks is EqualUnmodifiableListView) return _assignedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedTasks);
  }

  final List<CompletedTasks> _completedTasks;
  @override
  @JsonKey()
  List<CompletedTasks> get completedTasks {
    if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTasks);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final DataOfAllTasks? selectedTask;
  @override
  final int pages;
  @override
  final int limit;

  @override
  String toString() {
    return 'AllTasksState(isLoading: $isLoading, tasks: $tasks, assignedTasks: $assignedTasks, completedTasks: $completedTasks, total: $total, page: $page, selectedTask: $selectedTask, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTasksStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._assignedTasks, _assignedTasks) &&
            const DeepCollectionEquality()
                .equals(other._completedTasks, _completedTasks) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.selectedTask, selectedTask) ||
                other.selectedTask == selectedTask) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_assignedTasks),
      const DeepCollectionEquality().hash(_completedTasks),
      total,
      page,
      selectedTask,
      pages,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTasksStateImplCopyWith<_$AllTasksStateImpl> get copyWith =>
      __$$AllTasksStateImplCopyWithImpl<_$AllTasksStateImpl>(this, _$identity);
}

abstract class _AllTasksState extends AllTasksState {
  factory _AllTasksState(
      {final bool isLoading,
      required final List<DataOfAllTasks> tasks,
      final List<DataOfAssignedTasks> assignedTasks,
      final List<CompletedTasks> completedTasks,
      required final int total,
      required final int page,
      final DataOfAllTasks? selectedTask,
      required final int pages,
      required final int limit}) = _$AllTasksStateImpl;
  _AllTasksState._() : super._();

  @override
  bool get isLoading;
  @override
  List<DataOfAllTasks> get tasks;
  @override
  List<DataOfAssignedTasks> get assignedTasks;
  @override
  List<CompletedTasks> get completedTasks;
  @override
  int get total;
  @override
  int get page;
  @override
  DataOfAllTasks? get selectedTask;
  @override
  int get pages;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$AllTasksStateImplCopyWith<_$AllTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
