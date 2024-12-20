// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedTasksModel _$CompletedTasksModelFromJson(Map<String, dynamic> json) {
  return _CompletedTasksModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedTasksModel {
  int get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<CompletedTasks> get completedTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get totalCompletedTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get currentPageFetched => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get totalPagesAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get taskPerPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedTasksModelCopyWith<CompletedTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTasksModelCopyWith<$Res> {
  factory $CompletedTasksModelCopyWith(
          CompletedTasksModel value, $Res Function(CompletedTasksModel) then) =
      _$CompletedTasksModelCopyWithImpl<$Res, CompletedTasksModel>;
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      @JsonKey(name: 'data') List<CompletedTasks> completedTasks,
      @JsonKey(name: 'total') int totalCompletedTasks,
      @JsonKey(name: 'page') int currentPageFetched,
      @JsonKey(name: 'pages') int totalPagesAvailable,
      @JsonKey(name: 'limit') int taskPerPage});
}

/// @nodoc
class _$CompletedTasksModelCopyWithImpl<$Res, $Val extends CompletedTasksModel>
    implements $CompletedTasksModelCopyWith<$Res> {
  _$CompletedTasksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? message = null,
    Object? completedTasks = null,
    Object? totalCompletedTasks = null,
    Object? currentPageFetched = null,
    Object? totalPagesAvailable = null,
    Object? taskPerPage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      completedTasks: null == completedTasks
          ? _value.completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageFetched: null == currentPageFetched
          ? _value.currentPageFetched
          : currentPageFetched // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesAvailable: null == totalPagesAvailable
          ? _value.totalPagesAvailable
          : totalPagesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      taskPerPage: null == taskPerPage
          ? _value.taskPerPage
          : taskPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedTasksModelImplCopyWith<$Res>
    implements $CompletedTasksModelCopyWith<$Res> {
  factory _$$CompletedTasksModelImplCopyWith(_$CompletedTasksModelImpl value,
          $Res Function(_$CompletedTasksModelImpl) then) =
      __$$CompletedTasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      @JsonKey(name: 'data') List<CompletedTasks> completedTasks,
      @JsonKey(name: 'total') int totalCompletedTasks,
      @JsonKey(name: 'page') int currentPageFetched,
      @JsonKey(name: 'pages') int totalPagesAvailable,
      @JsonKey(name: 'limit') int taskPerPage});
}

/// @nodoc
class __$$CompletedTasksModelImplCopyWithImpl<$Res>
    extends _$CompletedTasksModelCopyWithImpl<$Res, _$CompletedTasksModelImpl>
    implements _$$CompletedTasksModelImplCopyWith<$Res> {
  __$$CompletedTasksModelImplCopyWithImpl(_$CompletedTasksModelImpl _value,
      $Res Function(_$CompletedTasksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? message = null,
    Object? completedTasks = null,
    Object? totalCompletedTasks = null,
    Object? currentPageFetched = null,
    Object? totalPagesAvailable = null,
    Object? taskPerPage = null,
  }) {
    return _then(_$CompletedTasksModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      completedTasks: null == completedTasks
          ? _value._completedTasks
          : completedTasks // ignore: cast_nullable_to_non_nullable
              as List<CompletedTasks>,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageFetched: null == currentPageFetched
          ? _value.currentPageFetched
          : currentPageFetched // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesAvailable: null == totalPagesAvailable
          ? _value.totalPagesAvailable
          : totalPagesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      taskPerPage: null == taskPerPage
          ? _value.taskPerPage
          : taskPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTasksModelImpl implements _CompletedTasksModel {
  const _$CompletedTasksModelImpl(
      {required this.status,
      required this.type,
      required this.message,
      @JsonKey(name: 'data') required final List<CompletedTasks> completedTasks,
      @JsonKey(name: 'total') required this.totalCompletedTasks,
      @JsonKey(name: 'page') required this.currentPageFetched,
      @JsonKey(name: 'pages') required this.totalPagesAvailable,
      @JsonKey(name: 'limit') required this.taskPerPage})
      : _completedTasks = completedTasks;

  factory _$CompletedTasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTasksModelImplFromJson(json);

  @override
  final int status;
  @override
  final String type;
  @override
  final String message;
  final List<CompletedTasks> _completedTasks;
  @override
  @JsonKey(name: 'data')
  List<CompletedTasks> get completedTasks {
    if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTasks);
  }

  @override
  @JsonKey(name: 'total')
  final int totalCompletedTasks;
  @override
  @JsonKey(name: 'page')
  final int currentPageFetched;
  @override
  @JsonKey(name: 'pages')
  final int totalPagesAvailable;
  @override
  @JsonKey(name: 'limit')
  final int taskPerPage;

  @override
  String toString() {
    return 'CompletedTasksModel(status: $status, type: $type, message: $message, completedTasks: $completedTasks, totalCompletedTasks: $totalCompletedTasks, currentPageFetched: $currentPageFetched, totalPagesAvailable: $totalPagesAvailable, taskPerPage: $taskPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTasksModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._completedTasks, _completedTasks) &&
            (identical(other.totalCompletedTasks, totalCompletedTasks) ||
                other.totalCompletedTasks == totalCompletedTasks) &&
            (identical(other.currentPageFetched, currentPageFetched) ||
                other.currentPageFetched == currentPageFetched) &&
            (identical(other.totalPagesAvailable, totalPagesAvailable) ||
                other.totalPagesAvailable == totalPagesAvailable) &&
            (identical(other.taskPerPage, taskPerPage) ||
                other.taskPerPage == taskPerPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      type,
      message,
      const DeepCollectionEquality().hash(_completedTasks),
      totalCompletedTasks,
      currentPageFetched,
      totalPagesAvailable,
      taskPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTasksModelImplCopyWith<_$CompletedTasksModelImpl> get copyWith =>
      __$$CompletedTasksModelImplCopyWithImpl<_$CompletedTasksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTasksModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedTasksModel implements CompletedTasksModel {
  const factory _CompletedTasksModel(
      {required final int status,
      required final String type,
      required final String message,
      @JsonKey(name: 'data') required final List<CompletedTasks> completedTasks,
      @JsonKey(name: 'total') required final int totalCompletedTasks,
      @JsonKey(name: 'page') required final int currentPageFetched,
      @JsonKey(name: 'pages') required final int totalPagesAvailable,
      @JsonKey(name: 'limit')
      required final int taskPerPage}) = _$CompletedTasksModelImpl;

  factory _CompletedTasksModel.fromJson(Map<String, dynamic> json) =
      _$CompletedTasksModelImpl.fromJson;

  @override
  int get status;
  @override
  String get type;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  List<CompletedTasks> get completedTasks;
  @override
  @JsonKey(name: 'total')
  int get totalCompletedTasks;
  @override
  @JsonKey(name: 'page')
  int get currentPageFetched;
  @override
  @JsonKey(name: 'pages')
  int get totalPagesAvailable;
  @override
  @JsonKey(name: 'limit')
  int get taskPerPage;
  @override
  @JsonKey(ignore: true)
  _$$CompletedTasksModelImplCopyWith<_$CompletedTasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedTasks _$CompletedTasksFromJson(Map<String, dynamic> json) {
  return _CompletedTasks.fromJson(json);
}

/// @nodoc
mixin _$CompletedTasks {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String get categoryId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_task_list')
  AssignedTasks get assignedTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories_details')
  CategoryDetails get categoryDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedTasksCopyWith<CompletedTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTasksCopyWith<$Res> {
  factory $CompletedTasksCopyWith(
          CompletedTasks value, $Res Function(CompletedTasks) then) =
      _$CompletedTasksCopyWithImpl<$Res, CompletedTasks>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      String name,
      @JsonKey(name: 'category_id') String categoryId,
      String description,
      @JsonKey(name: 'end_date') DateTime endDate,
      int point,
      String status,
      @JsonKey(name: 'assigned_task_list') AssignedTasks assignedTasks,
      @JsonKey(name: 'categories_details') CategoryDetails categoryDetails});

  $AssignedTasksCopyWith<$Res> get assignedTasks;
  $CategoryDetailsCopyWith<$Res> get categoryDetails;
}

/// @nodoc
class _$CompletedTasksCopyWithImpl<$Res, $Val extends CompletedTasks>
    implements $CompletedTasksCopyWith<$Res> {
  _$CompletedTasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? categoryId = null,
    Object? description = null,
    Object? endDate = null,
    Object? point = null,
    Object? status = null,
    Object? assignedTasks = null,
    Object? categoryDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      assignedTasks: null == assignedTasks
          ? _value.assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as AssignedTasks,
      categoryDetails: null == categoryDetails
          ? _value.categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as CategoryDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssignedTasksCopyWith<$Res> get assignedTasks {
    return $AssignedTasksCopyWith<$Res>(_value.assignedTasks, (value) {
      return _then(_value.copyWith(assignedTasks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDetailsCopyWith<$Res> get categoryDetails {
    return $CategoryDetailsCopyWith<$Res>(_value.categoryDetails, (value) {
      return _then(_value.copyWith(categoryDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedTasksImplCopyWith<$Res>
    implements $CompletedTasksCopyWith<$Res> {
  factory _$$CompletedTasksImplCopyWith(_$CompletedTasksImpl value,
          $Res Function(_$CompletedTasksImpl) then) =
      __$$CompletedTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String image,
      String name,
      @JsonKey(name: 'category_id') String categoryId,
      String description,
      @JsonKey(name: 'end_date') DateTime endDate,
      int point,
      String status,
      @JsonKey(name: 'assigned_task_list') AssignedTasks assignedTasks,
      @JsonKey(name: 'categories_details') CategoryDetails categoryDetails});

  @override
  $AssignedTasksCopyWith<$Res> get assignedTasks;
  @override
  $CategoryDetailsCopyWith<$Res> get categoryDetails;
}

/// @nodoc
class __$$CompletedTasksImplCopyWithImpl<$Res>
    extends _$CompletedTasksCopyWithImpl<$Res, _$CompletedTasksImpl>
    implements _$$CompletedTasksImplCopyWith<$Res> {
  __$$CompletedTasksImplCopyWithImpl(
      _$CompletedTasksImpl _value, $Res Function(_$CompletedTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? categoryId = null,
    Object? description = null,
    Object? endDate = null,
    Object? point = null,
    Object? status = null,
    Object? assignedTasks = null,
    Object? categoryDetails = null,
  }) {
    return _then(_$CompletedTasksImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      assignedTasks: null == assignedTasks
          ? _value.assignedTasks
          : assignedTasks // ignore: cast_nullable_to_non_nullable
              as AssignedTasks,
      categoryDetails: null == categoryDetails
          ? _value.categoryDetails
          : categoryDetails // ignore: cast_nullable_to_non_nullable
              as CategoryDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTasksImpl implements _CompletedTasks {
  const _$CompletedTasksImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.name,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.description,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.point,
      required this.status,
      @JsonKey(name: 'assigned_task_list') required this.assignedTasks,
      @JsonKey(name: 'categories_details') required this.categoryDetails});

  factory _$CompletedTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTasksImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String image;
  @override
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final String categoryId;
  @override
  final String description;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  final int point;
  @override
  final String status;
  @override
  @JsonKey(name: 'assigned_task_list')
  final AssignedTasks assignedTasks;
  @override
  @JsonKey(name: 'categories_details')
  final CategoryDetails categoryDetails;

  @override
  String toString() {
    return 'CompletedTasks(id: $id, image: $image, name: $name, categoryId: $categoryId, description: $description, endDate: $endDate, point: $point, status: $status, assignedTasks: $assignedTasks, categoryDetails: $categoryDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTasksImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assignedTasks, assignedTasks) ||
                other.assignedTasks == assignedTasks) &&
            (identical(other.categoryDetails, categoryDetails) ||
                other.categoryDetails == categoryDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, categoryId,
      description, endDate, point, status, assignedTasks, categoryDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTasksImplCopyWith<_$CompletedTasksImpl> get copyWith =>
      __$$CompletedTasksImplCopyWithImpl<_$CompletedTasksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTasksImplToJson(
      this,
    );
  }
}

abstract class _CompletedTasks implements CompletedTasks {
  const factory _CompletedTasks(
      {@JsonKey(name: '_id') required final String id,
      required final String image,
      required final String name,
      @JsonKey(name: 'category_id') required final String categoryId,
      required final String description,
      @JsonKey(name: 'end_date') required final DateTime endDate,
      required final int point,
      required final String status,
      @JsonKey(name: 'assigned_task_list')
      required final AssignedTasks assignedTasks,
      @JsonKey(name: 'categories_details')
      required final CategoryDetails categoryDetails}) = _$CompletedTasksImpl;

  factory _CompletedTasks.fromJson(Map<String, dynamic> json) =
      _$CompletedTasksImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(name: 'category_id')
  String get categoryId;
  @override
  String get description;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  int get point;
  @override
  String get status;
  @override
  @JsonKey(name: 'assigned_task_list')
  AssignedTasks get assignedTasks;
  @override
  @JsonKey(name: 'categories_details')
  CategoryDetails get categoryDetails;
  @override
  @JsonKey(ignore: true)
  _$$CompletedTasksImplCopyWith<_$CompletedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignedTasks _$AssignedTasksFromJson(Map<String, dynamic> json) {
  return _AssignedTasks.fromJson(json);
}

/// @nodoc
mixin _$AssignedTasks {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_date')
  DateTime get completedDate => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get inReview => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_points')
  int get earnedPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignedTasksCopyWith<AssignedTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedTasksCopyWith<$Res> {
  factory $AssignedTasksCopyWith(
          AssignedTasks value, $Res Function(AssignedTasks) then) =
      _$AssignedTasksCopyWithImpl<$Res, AssignedTasks>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'completed_date') DateTime completedDate,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      bool inReview,
      String status,
      List<String> media,
      @JsonKey(name: 'earned_points') int earnedPoints});
}

/// @nodoc
class _$AssignedTasksCopyWithImpl<$Res, $Val extends AssignedTasks>
    implements $AssignedTasksCopyWith<$Res> {
  _$AssignedTasksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? taskId = null,
    Object? completedDate = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inReview = null,
    Object? status = null,
    Object? media = null,
    Object? earnedPoints = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      completedDate: null == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inReview: null == inReview
          ? _value.inReview
          : inReview // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignedTasksImplCopyWith<$Res>
    implements $AssignedTasksCopyWith<$Res> {
  factory _$$AssignedTasksImplCopyWith(
          _$AssignedTasksImpl value, $Res Function(_$AssignedTasksImpl) then) =
      __$$AssignedTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'completed_date') DateTime completedDate,
      bool isDeleted,
      DateTime createdAt,
      DateTime updatedAt,
      bool inReview,
      String status,
      List<String> media,
      @JsonKey(name: 'earned_points') int earnedPoints});
}

/// @nodoc
class __$$AssignedTasksImplCopyWithImpl<$Res>
    extends _$AssignedTasksCopyWithImpl<$Res, _$AssignedTasksImpl>
    implements _$$AssignedTasksImplCopyWith<$Res> {
  __$$AssignedTasksImplCopyWithImpl(
      _$AssignedTasksImpl _value, $Res Function(_$AssignedTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? taskId = null,
    Object? completedDate = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inReview = null,
    Object? status = null,
    Object? media = null,
    Object? earnedPoints = null,
  }) {
    return _then(_$AssignedTasksImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      completedDate: null == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inReview: null == inReview
          ? _value.inReview
          : inReview // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedTasksImpl implements _AssignedTasks {
  const _$AssignedTasksImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'completed_date') required this.completedDate,
      required this.isDeleted,
      required this.createdAt,
      required this.updatedAt,
      required this.inReview,
      required this.status,
      required final List<String> media,
      @JsonKey(name: 'earned_points') required this.earnedPoints})
      : _media = media;

  factory _$AssignedTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedTasksImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'completed_date')
  final DateTime completedDate;
  @override
  final bool isDeleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool inReview;
  @override
  final String status;
  final List<String> _media;
  @override
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey(name: 'earned_points')
  final int earnedPoints;

  @override
  String toString() {
    return 'AssignedTasks(id: $id, userId: $userId, taskId: $taskId, completedDate: $completedDate, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, inReview: $inReview, status: $status, media: $media, earnedPoints: $earnedPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedTasksImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.inReview, inReview) ||
                other.inReview == inReview) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.earnedPoints, earnedPoints) ||
                other.earnedPoints == earnedPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      taskId,
      completedDate,
      isDeleted,
      createdAt,
      updatedAt,
      inReview,
      status,
      const DeepCollectionEquality().hash(_media),
      earnedPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedTasksImplCopyWith<_$AssignedTasksImpl> get copyWith =>
      __$$AssignedTasksImplCopyWithImpl<_$AssignedTasksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedTasksImplToJson(
      this,
    );
  }
}

abstract class _AssignedTasks implements AssignedTasks {
  const factory _AssignedTasks(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'completed_date') required final DateTime completedDate,
      required final bool isDeleted,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool inReview,
      required final String status,
      required final List<String> media,
      @JsonKey(name: 'earned_points')
      required final int earnedPoints}) = _$AssignedTasksImpl;

  factory _AssignedTasks.fromJson(Map<String, dynamic> json) =
      _$AssignedTasksImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'completed_date')
  DateTime get completedDate;
  @override
  bool get isDeleted;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get inReview;
  @override
  String get status;
  @override
  List<String> get media;
  @override
  @JsonKey(name: 'earned_points')
  int get earnedPoints;
  @override
  @JsonKey(ignore: true)
  _$$AssignedTasksImplCopyWith<_$AssignedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDetails _$CategoryDetailsFromJson(Map<String, dynamic> json) {
  return _CategoryDetails.fromJson(json);
}

/// @nodoc
mixin _$CategoryDetails {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDetailsCopyWith<CategoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsCopyWith<$Res> {
  factory $CategoryDetailsCopyWith(
          CategoryDetails value, $Res Function(CategoryDetails) then) =
      _$CategoryDetailsCopyWithImpl<$Res, CategoryDetails>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$CategoryDetailsCopyWithImpl<$Res, $Val extends CategoryDetails>
    implements $CategoryDetailsCopyWith<$Res> {
  _$CategoryDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDetailsImplCopyWith<$Res>
    implements $CategoryDetailsCopyWith<$Res> {
  factory _$$CategoryDetailsImplCopyWith(_$CategoryDetailsImpl value,
          $Res Function(_$CategoryDetailsImpl) then) =
      __$$CategoryDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$CategoryDetailsImplCopyWithImpl<$Res>
    extends _$CategoryDetailsCopyWithImpl<$Res, _$CategoryDetailsImpl>
    implements _$$CategoryDetailsImplCopyWith<$Res> {
  __$$CategoryDetailsImplCopyWithImpl(
      _$CategoryDetailsImpl _value, $Res Function(_$CategoryDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDetailsImpl implements _CategoryDetails {
  const _$CategoryDetailsImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$CategoryDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDetailsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryDetails(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailsImplCopyWith<_$CategoryDetailsImpl> get copyWith =>
      __$$CategoryDetailsImplCopyWithImpl<_$CategoryDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDetailsImplToJson(
      this,
    );
  }
}

abstract class _CategoryDetails implements CategoryDetails {
  const factory _CategoryDetails(
      {@JsonKey(name: '_id') required final String id,
      required final String name}) = _$CategoryDetailsImpl;

  factory _CategoryDetails.fromJson(Map<String, dynamic> json) =
      _$CategoryDetailsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDetailsImplCopyWith<_$CategoryDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
