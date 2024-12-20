// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignedTasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignedTasksModel _$AssignedTasksModelFromJson(Map<String, dynamic> json) {
  return _AssignedTasksModel.fromJson(json);
}

/// @nodoc
mixin _$AssignedTasksModel {
  int get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DataOfAssignedTasks> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignedTasksModelCopyWith<AssignedTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedTasksModelCopyWith<$Res> {
  factory $AssignedTasksModelCopyWith(
          AssignedTasksModel value, $Res Function(AssignedTasksModel) then) =
      _$AssignedTasksModelCopyWithImpl<$Res, AssignedTasksModel>;
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      List<DataOfAssignedTasks> data,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class _$AssignedTasksModelCopyWithImpl<$Res, $Val extends AssignedTasksModel>
    implements $AssignedTasksModelCopyWith<$Res> {
  _$AssignedTasksModelCopyWithImpl(this._value, this._then);

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
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AssignedTasksModelImplCopyWith<$Res>
    implements $AssignedTasksModelCopyWith<$Res> {
  factory _$$AssignedTasksModelImplCopyWith(_$AssignedTasksModelImpl value,
          $Res Function(_$AssignedTasksModelImpl) then) =
      __$$AssignedTasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      List<DataOfAssignedTasks> data,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class __$$AssignedTasksModelImplCopyWithImpl<$Res>
    extends _$AssignedTasksModelCopyWithImpl<$Res, _$AssignedTasksModelImpl>
    implements _$$AssignedTasksModelImplCopyWith<$Res> {
  __$$AssignedTasksModelImplCopyWithImpl(_$AssignedTasksModelImpl _value,
      $Res Function(_$AssignedTasksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? message = null,
    Object? data = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(_$AssignedTasksModelImpl(
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
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$AssignedTasksModelImpl implements _AssignedTasksModel {
  _$AssignedTasksModelImpl(
      {required this.status,
      required this.type,
      required this.message,
      required final List<DataOfAssignedTasks> data,
      required this.total,
      required this.page,
      required this.pages,
      required this.limit})
      : _data = data;

  factory _$AssignedTasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedTasksModelImplFromJson(json);

  @override
  final int status;
  @override
  final String type;
  @override
  final String message;
  final List<DataOfAssignedTasks> _data;
  @override
  List<DataOfAssignedTasks> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
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
    return 'AssignedTasksModel(status: $status, type: $type, message: $message, data: $data, total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedTasksModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, type, message,
      const DeepCollectionEquality().hash(_data), total, page, pages, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedTasksModelImplCopyWith<_$AssignedTasksModelImpl> get copyWith =>
      __$$AssignedTasksModelImplCopyWithImpl<_$AssignedTasksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedTasksModelImplToJson(
      this,
    );
  }
}

abstract class _AssignedTasksModel implements AssignedTasksModel {
  factory _AssignedTasksModel(
      {required final int status,
      required final String type,
      required final String message,
      required final List<DataOfAssignedTasks> data,
      required final int total,
      required final int page,
      required final int pages,
      required final int limit}) = _$AssignedTasksModelImpl;

  factory _AssignedTasksModel.fromJson(Map<String, dynamic> json) =
      _$AssignedTasksModelImpl.fromJson;

  @override
  int get status;
  @override
  String get type;
  @override
  String get message;
  @override
  List<DataOfAssignedTasks> get data;
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
  _$$AssignedTasksModelImplCopyWith<_$AssignedTasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataOfAssignedTasks _$DataOfAssignedTasksFromJson(Map<String, dynamic> json) {
  return _DataOfAssignedTasks.fromJson(json);
}

/// @nodoc
mixin _$DataOfAssignedTasks {
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
  AssignedTaskList get assignedTaskList => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories_details')
  CategoriesDetails get categoriesDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataOfAssignedTasksCopyWith<DataOfAssignedTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOfAssignedTasksCopyWith<$Res> {
  factory $DataOfAssignedTasksCopyWith(
          DataOfAssignedTasks value, $Res Function(DataOfAssignedTasks) then) =
      _$DataOfAssignedTasksCopyWithImpl<$Res, DataOfAssignedTasks>;
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
      @JsonKey(name: 'assigned_task_list') AssignedTaskList assignedTaskList,
      @JsonKey(name: 'categories_details')
      CategoriesDetails categoriesDetails});

  $AssignedTaskListCopyWith<$Res> get assignedTaskList;
  $CategoriesDetailsCopyWith<$Res> get categoriesDetails;
}

/// @nodoc
class _$DataOfAssignedTasksCopyWithImpl<$Res, $Val extends DataOfAssignedTasks>
    implements $DataOfAssignedTasksCopyWith<$Res> {
  _$DataOfAssignedTasksCopyWithImpl(this._value, this._then);

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
    Object? assignedTaskList = null,
    Object? categoriesDetails = null,
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
      assignedTaskList: null == assignedTaskList
          ? _value.assignedTaskList
          : assignedTaskList // ignore: cast_nullable_to_non_nullable
              as AssignedTaskList,
      categoriesDetails: null == categoriesDetails
          ? _value.categoriesDetails
          : categoriesDetails // ignore: cast_nullable_to_non_nullable
              as CategoriesDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssignedTaskListCopyWith<$Res> get assignedTaskList {
    return $AssignedTaskListCopyWith<$Res>(_value.assignedTaskList, (value) {
      return _then(_value.copyWith(assignedTaskList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesDetailsCopyWith<$Res> get categoriesDetails {
    return $CategoriesDetailsCopyWith<$Res>(_value.categoriesDetails, (value) {
      return _then(_value.copyWith(categoriesDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataOfAssignedTasksImplCopyWith<$Res>
    implements $DataOfAssignedTasksCopyWith<$Res> {
  factory _$$DataOfAssignedTasksImplCopyWith(_$DataOfAssignedTasksImpl value,
          $Res Function(_$DataOfAssignedTasksImpl) then) =
      __$$DataOfAssignedTasksImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'assigned_task_list') AssignedTaskList assignedTaskList,
      @JsonKey(name: 'categories_details')
      CategoriesDetails categoriesDetails});

  @override
  $AssignedTaskListCopyWith<$Res> get assignedTaskList;
  @override
  $CategoriesDetailsCopyWith<$Res> get categoriesDetails;
}

/// @nodoc
class __$$DataOfAssignedTasksImplCopyWithImpl<$Res>
    extends _$DataOfAssignedTasksCopyWithImpl<$Res, _$DataOfAssignedTasksImpl>
    implements _$$DataOfAssignedTasksImplCopyWith<$Res> {
  __$$DataOfAssignedTasksImplCopyWithImpl(_$DataOfAssignedTasksImpl _value,
      $Res Function(_$DataOfAssignedTasksImpl) _then)
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
    Object? assignedTaskList = null,
    Object? categoriesDetails = null,
  }) {
    return _then(_$DataOfAssignedTasksImpl(
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
      assignedTaskList: null == assignedTaskList
          ? _value.assignedTaskList
          : assignedTaskList // ignore: cast_nullable_to_non_nullable
              as AssignedTaskList,
      categoriesDetails: null == categoriesDetails
          ? _value.categoriesDetails
          : categoriesDetails // ignore: cast_nullable_to_non_nullable
              as CategoriesDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataOfAssignedTasksImpl implements _DataOfAssignedTasks {
  _$DataOfAssignedTasksImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.name,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.description,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.point,
      required this.status,
      @JsonKey(name: 'assigned_task_list') required this.assignedTaskList,
      @JsonKey(name: 'categories_details') required this.categoriesDetails});

  factory _$DataOfAssignedTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataOfAssignedTasksImplFromJson(json);

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
  final AssignedTaskList assignedTaskList;
  @override
  @JsonKey(name: 'categories_details')
  final CategoriesDetails categoriesDetails;

  @override
  String toString() {
    return 'DataOfAssignedTasks(id: $id, image: $image, name: $name, categoryId: $categoryId, description: $description, endDate: $endDate, point: $point, status: $status, assignedTaskList: $assignedTaskList, categoriesDetails: $categoriesDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataOfAssignedTasksImpl &&
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
            (identical(other.assignedTaskList, assignedTaskList) ||
                other.assignedTaskList == assignedTaskList) &&
            (identical(other.categoriesDetails, categoriesDetails) ||
                other.categoriesDetails == categoriesDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, categoryId,
      description, endDate, point, status, assignedTaskList, categoriesDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataOfAssignedTasksImplCopyWith<_$DataOfAssignedTasksImpl> get copyWith =>
      __$$DataOfAssignedTasksImplCopyWithImpl<_$DataOfAssignedTasksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataOfAssignedTasksImplToJson(
      this,
    );
  }
}

abstract class _DataOfAssignedTasks implements DataOfAssignedTasks {
  factory _DataOfAssignedTasks(
          {@JsonKey(name: '_id') required final String id,
          required final String image,
          required final String name,
          @JsonKey(name: 'category_id') required final String categoryId,
          required final String description,
          @JsonKey(name: 'end_date') required final DateTime endDate,
          required final int point,
          required final String status,
          @JsonKey(name: 'assigned_task_list')
          required final AssignedTaskList assignedTaskList,
          @JsonKey(name: 'categories_details')
          required final CategoriesDetails categoriesDetails}) =
      _$DataOfAssignedTasksImpl;

  factory _DataOfAssignedTasks.fromJson(Map<String, dynamic> json) =
      _$DataOfAssignedTasksImpl.fromJson;

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
  AssignedTaskList get assignedTaskList;
  @override
  @JsonKey(name: 'categories_details')
  CategoriesDetails get categoriesDetails;
  @override
  @JsonKey(ignore: true)
  _$$DataOfAssignedTasksImplCopyWith<_$DataOfAssignedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignedTaskList _$AssignedTaskListFromJson(Map<String, dynamic> json) {
  return _AssignedTaskList.fromJson(json);
}

/// @nodoc
mixin _$AssignedTaskList {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_date')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'inReview')
  bool get inReview => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignedTaskListCopyWith<AssignedTaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedTaskListCopyWith<$Res> {
  factory $AssignedTaskListCopyWith(
          AssignedTaskList value, $Res Function(AssignedTaskList) then) =
      _$AssignedTaskListCopyWithImpl<$Res, AssignedTaskList>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'completed_date') DateTime? completedDate,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(name: 'inReview') bool inReview,
      List<String> media});
}

/// @nodoc
class _$AssignedTaskListCopyWithImpl<$Res, $Val extends AssignedTaskList>
    implements $AssignedTaskListCopyWith<$Res> {
  _$AssignedTaskListCopyWithImpl(this._value, this._then);

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
    Object? completedDate = freezed,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inReview = null,
    Object? media = null,
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
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignedTaskListImplCopyWith<$Res>
    implements $AssignedTaskListCopyWith<$Res> {
  factory _$$AssignedTaskListImplCopyWith(_$AssignedTaskListImpl value,
          $Res Function(_$AssignedTaskListImpl) then) =
      __$$AssignedTaskListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'completed_date') DateTime? completedDate,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'updatedAt') DateTime updatedAt,
      @JsonKey(name: 'inReview') bool inReview,
      List<String> media});
}

/// @nodoc
class __$$AssignedTaskListImplCopyWithImpl<$Res>
    extends _$AssignedTaskListCopyWithImpl<$Res, _$AssignedTaskListImpl>
    implements _$$AssignedTaskListImplCopyWith<$Res> {
  __$$AssignedTaskListImplCopyWithImpl(_$AssignedTaskListImpl _value,
      $Res Function(_$AssignedTaskListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? taskId = null,
    Object? completedDate = freezed,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inReview = null,
    Object? media = null,
  }) {
    return _then(_$AssignedTaskListImpl(
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
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedTaskListImpl implements _AssignedTaskList {
  _$AssignedTaskListImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'completed_date') this.completedDate,
      @JsonKey(name: 'isDeleted') required this.isDeleted,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(name: 'inReview') required this.inReview,
      required final List<String> media})
      : _media = media;

  factory _$AssignedTaskListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedTaskListImplFromJson(json);

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
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'inReview')
  final bool inReview;
  final List<String> _media;
  @override
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'AssignedTaskList(id: $id, userId: $userId, taskId: $taskId, completedDate: $completedDate, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, inReview: $inReview, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedTaskListImpl &&
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
            const DeepCollectionEquality().equals(other._media, _media));
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
      const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedTaskListImplCopyWith<_$AssignedTaskListImpl> get copyWith =>
      __$$AssignedTaskListImplCopyWithImpl<_$AssignedTaskListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedTaskListImplToJson(
      this,
    );
  }
}

abstract class _AssignedTaskList implements AssignedTaskList {
  factory _AssignedTaskList(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'completed_date') final DateTime? completedDate,
      @JsonKey(name: 'isDeleted') required final bool isDeleted,
      @JsonKey(name: 'createdAt') required final DateTime createdAt,
      @JsonKey(name: 'updatedAt') required final DateTime updatedAt,
      @JsonKey(name: 'inReview') required final bool inReview,
      required final List<String> media}) = _$AssignedTaskListImpl;

  factory _AssignedTaskList.fromJson(Map<String, dynamic> json) =
      _$AssignedTaskListImpl.fromJson;

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
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'inReview')
  bool get inReview;
  @override
  List<String> get media;
  @override
  @JsonKey(ignore: true)
  _$$AssignedTaskListImplCopyWith<_$AssignedTaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesDetails _$CategoriesDetailsFromJson(Map<String, dynamic> json) {
  return _CategoriesDetails.fromJson(json);
}

/// @nodoc
mixin _$CategoriesDetails {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDetailsCopyWith<CategoriesDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDetailsCopyWith<$Res> {
  factory $CategoriesDetailsCopyWith(
          CategoriesDetails value, $Res Function(CategoriesDetails) then) =
      _$CategoriesDetailsCopyWithImpl<$Res, CategoriesDetails>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$CategoriesDetailsCopyWithImpl<$Res, $Val extends CategoriesDetails>
    implements $CategoriesDetailsCopyWith<$Res> {
  _$CategoriesDetailsCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoriesDetailsImplCopyWith<$Res>
    implements $CategoriesDetailsCopyWith<$Res> {
  factory _$$CategoriesDetailsImplCopyWith(_$CategoriesDetailsImpl value,
          $Res Function(_$CategoriesDetailsImpl) then) =
      __$$CategoriesDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$CategoriesDetailsImplCopyWithImpl<$Res>
    extends _$CategoriesDetailsCopyWithImpl<$Res, _$CategoriesDetailsImpl>
    implements _$$CategoriesDetailsImplCopyWith<$Res> {
  __$$CategoriesDetailsImplCopyWithImpl(_$CategoriesDetailsImpl _value,
      $Res Function(_$CategoriesDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoriesDetailsImpl(
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
class _$CategoriesDetailsImpl implements _CategoriesDetails {
  _$CategoriesDetailsImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$CategoriesDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesDetailsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoriesDetails(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDetailsImplCopyWith<_$CategoriesDetailsImpl> get copyWith =>
      __$$CategoriesDetailsImplCopyWithImpl<_$CategoriesDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesDetailsImplToJson(
      this,
    );
  }
}

abstract class _CategoriesDetails implements CategoriesDetails {
  factory _CategoriesDetails(
      {@JsonKey(name: '_id') required final String id,
      required final String name}) = _$CategoriesDetailsImpl;

  factory _CategoriesDetails.fromJson(Map<String, dynamic> json) =
      _$CategoriesDetailsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesDetailsImplCopyWith<_$CategoriesDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
