// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointsHistoryModel _$PointsHistoryModelFromJson(Map<String, dynamic> json) {
  return _PointsHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PointsHistoryModel {
  int get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PointsHistory get pointsHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsHistoryModelCopyWith<PointsHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsHistoryModelCopyWith<$Res> {
  factory $PointsHistoryModelCopyWith(
          PointsHistoryModel value, $Res Function(PointsHistoryModel) then) =
      _$PointsHistoryModelCopyWithImpl<$Res, PointsHistoryModel>;
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      @JsonKey(name: 'data') PointsHistory pointsHistory});

  $PointsHistoryCopyWith<$Res> get pointsHistory;
}

/// @nodoc
class _$PointsHistoryModelCopyWithImpl<$Res, $Val extends PointsHistoryModel>
    implements $PointsHistoryModelCopyWith<$Res> {
  _$PointsHistoryModelCopyWithImpl(this._value, this._then);

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
    Object? pointsHistory = null,
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
      pointsHistory: null == pointsHistory
          ? _value.pointsHistory
          : pointsHistory // ignore: cast_nullable_to_non_nullable
              as PointsHistory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointsHistoryCopyWith<$Res> get pointsHistory {
    return $PointsHistoryCopyWith<$Res>(_value.pointsHistory, (value) {
      return _then(_value.copyWith(pointsHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PointsHistoryModelImplCopyWith<$Res>
    implements $PointsHistoryModelCopyWith<$Res> {
  factory _$$PointsHistoryModelImplCopyWith(_$PointsHistoryModelImpl value,
          $Res Function(_$PointsHistoryModelImpl) then) =
      __$$PointsHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      @JsonKey(name: 'data') PointsHistory pointsHistory});

  @override
  $PointsHistoryCopyWith<$Res> get pointsHistory;
}

/// @nodoc
class __$$PointsHistoryModelImplCopyWithImpl<$Res>
    extends _$PointsHistoryModelCopyWithImpl<$Res, _$PointsHistoryModelImpl>
    implements _$$PointsHistoryModelImplCopyWith<$Res> {
  __$$PointsHistoryModelImplCopyWithImpl(_$PointsHistoryModelImpl _value,
      $Res Function(_$PointsHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? message = null,
    Object? pointsHistory = null,
  }) {
    return _then(_$PointsHistoryModelImpl(
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
      pointsHistory: null == pointsHistory
          ? _value.pointsHistory
          : pointsHistory // ignore: cast_nullable_to_non_nullable
              as PointsHistory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointsHistoryModelImpl implements _PointsHistoryModel {
  const _$PointsHistoryModelImpl(
      {required this.status,
      required this.type,
      required this.message,
      @JsonKey(name: 'data') required this.pointsHistory});

  factory _$PointsHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointsHistoryModelImplFromJson(json);

  @override
  final int status;
  @override
  final String type;
  @override
  final String message;
  @override
  @JsonKey(name: 'data')
  final PointsHistory pointsHistory;

  @override
  String toString() {
    return 'PointsHistoryModel(status: $status, type: $type, message: $message, pointsHistory: $pointsHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointsHistoryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pointsHistory, pointsHistory) ||
                other.pointsHistory == pointsHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, type, message, pointsHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointsHistoryModelImplCopyWith<_$PointsHistoryModelImpl> get copyWith =>
      __$$PointsHistoryModelImplCopyWithImpl<_$PointsHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointsHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _PointsHistoryModel implements PointsHistoryModel {
  const factory _PointsHistoryModel(
          {required final int status,
          required final String type,
          required final String message,
          @JsonKey(name: 'data') required final PointsHistory pointsHistory}) =
      _$PointsHistoryModelImpl;

  factory _PointsHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PointsHistoryModelImpl.fromJson;

  @override
  int get status;
  @override
  String get type;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  PointsHistory get pointsHistory;
  @override
  @JsonKey(ignore: true)
  _$$PointsHistoryModelImplCopyWith<_$PointsHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PointsHistory _$PointsHistoryFromJson(Map<String, dynamic> json) {
  return _PointsHistory.fromJson(json);
}

/// @nodoc
mixin _$PointsHistory {
  @JsonKey(name: 'docs')
  List<PointDetails> get pointDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get totalCompletedTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get taskPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get currentPageFetched => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get totalPagesAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsHistoryCopyWith<PointsHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsHistoryCopyWith<$Res> {
  factory $PointsHistoryCopyWith(
          PointsHistory value, $Res Function(PointsHistory) then) =
      _$PointsHistoryCopyWithImpl<$Res, PointsHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<PointDetails> pointDetails,
      @JsonKey(name: 'total') int totalCompletedTasks,
      @JsonKey(name: 'limit') int taskPerPage,
      @JsonKey(name: 'page') int currentPageFetched,
      @JsonKey(name: 'pages') int totalPagesAvailable});
}

/// @nodoc
class _$PointsHistoryCopyWithImpl<$Res, $Val extends PointsHistory>
    implements $PointsHistoryCopyWith<$Res> {
  _$PointsHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointDetails = null,
    Object? totalCompletedTasks = null,
    Object? taskPerPage = null,
    Object? currentPageFetched = null,
    Object? totalPagesAvailable = null,
  }) {
    return _then(_value.copyWith(
      pointDetails: null == pointDetails
          ? _value.pointDetails
          : pointDetails // ignore: cast_nullable_to_non_nullable
              as List<PointDetails>,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      taskPerPage: null == taskPerPage
          ? _value.taskPerPage
          : taskPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageFetched: null == currentPageFetched
          ? _value.currentPageFetched
          : currentPageFetched // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesAvailable: null == totalPagesAvailable
          ? _value.totalPagesAvailable
          : totalPagesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointsHistoryImplCopyWith<$Res>
    implements $PointsHistoryCopyWith<$Res> {
  factory _$$PointsHistoryImplCopyWith(
          _$PointsHistoryImpl value, $Res Function(_$PointsHistoryImpl) then) =
      __$$PointsHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<PointDetails> pointDetails,
      @JsonKey(name: 'total') int totalCompletedTasks,
      @JsonKey(name: 'limit') int taskPerPage,
      @JsonKey(name: 'page') int currentPageFetched,
      @JsonKey(name: 'pages') int totalPagesAvailable});
}

/// @nodoc
class __$$PointsHistoryImplCopyWithImpl<$Res>
    extends _$PointsHistoryCopyWithImpl<$Res, _$PointsHistoryImpl>
    implements _$$PointsHistoryImplCopyWith<$Res> {
  __$$PointsHistoryImplCopyWithImpl(
      _$PointsHistoryImpl _value, $Res Function(_$PointsHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointDetails = null,
    Object? totalCompletedTasks = null,
    Object? taskPerPage = null,
    Object? currentPageFetched = null,
    Object? totalPagesAvailable = null,
  }) {
    return _then(_$PointsHistoryImpl(
      pointDetails: null == pointDetails
          ? _value._pointDetails
          : pointDetails // ignore: cast_nullable_to_non_nullable
              as List<PointDetails>,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      taskPerPage: null == taskPerPage
          ? _value.taskPerPage
          : taskPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageFetched: null == currentPageFetched
          ? _value.currentPageFetched
          : currentPageFetched // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesAvailable: null == totalPagesAvailable
          ? _value.totalPagesAvailable
          : totalPagesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointsHistoryImpl implements _PointsHistory {
  const _$PointsHistoryImpl(
      {@JsonKey(name: 'docs') required final List<PointDetails> pointDetails,
      @JsonKey(name: 'total') required this.totalCompletedTasks,
      @JsonKey(name: 'limit') required this.taskPerPage,
      @JsonKey(name: 'page') required this.currentPageFetched,
      @JsonKey(name: 'pages') required this.totalPagesAvailable})
      : _pointDetails = pointDetails;

  factory _$PointsHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointsHistoryImplFromJson(json);

  final List<PointDetails> _pointDetails;
  @override
  @JsonKey(name: 'docs')
  List<PointDetails> get pointDetails {
    if (_pointDetails is EqualUnmodifiableListView) return _pointDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pointDetails);
  }

  @override
  @JsonKey(name: 'total')
  final int totalCompletedTasks;
  @override
  @JsonKey(name: 'limit')
  final int taskPerPage;
  @override
  @JsonKey(name: 'page')
  final int currentPageFetched;
  @override
  @JsonKey(name: 'pages')
  final int totalPagesAvailable;

  @override
  String toString() {
    return 'PointsHistory(pointDetails: $pointDetails, totalCompletedTasks: $totalCompletedTasks, taskPerPage: $taskPerPage, currentPageFetched: $currentPageFetched, totalPagesAvailable: $totalPagesAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointsHistoryImpl &&
            const DeepCollectionEquality()
                .equals(other._pointDetails, _pointDetails) &&
            (identical(other.totalCompletedTasks, totalCompletedTasks) ||
                other.totalCompletedTasks == totalCompletedTasks) &&
            (identical(other.taskPerPage, taskPerPage) ||
                other.taskPerPage == taskPerPage) &&
            (identical(other.currentPageFetched, currentPageFetched) ||
                other.currentPageFetched == currentPageFetched) &&
            (identical(other.totalPagesAvailable, totalPagesAvailable) ||
                other.totalPagesAvailable == totalPagesAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pointDetails),
      totalCompletedTasks,
      taskPerPage,
      currentPageFetched,
      totalPagesAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointsHistoryImplCopyWith<_$PointsHistoryImpl> get copyWith =>
      __$$PointsHistoryImplCopyWithImpl<_$PointsHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointsHistoryImplToJson(
      this,
    );
  }
}

abstract class _PointsHistory implements PointsHistory {
  const factory _PointsHistory(
      {@JsonKey(name: 'docs') required final List<PointDetails> pointDetails,
      @JsonKey(name: 'total') required final int totalCompletedTasks,
      @JsonKey(name: 'limit') required final int taskPerPage,
      @JsonKey(name: 'page') required final int currentPageFetched,
      @JsonKey(name: 'pages')
      required final int totalPagesAvailable}) = _$PointsHistoryImpl;

  factory _PointsHistory.fromJson(Map<String, dynamic> json) =
      _$PointsHistoryImpl.fromJson;

  @override
  @JsonKey(name: 'docs')
  List<PointDetails> get pointDetails;
  @override
  @JsonKey(name: 'total')
  int get totalCompletedTasks;
  @override
  @JsonKey(name: 'limit')
  int get taskPerPage;
  @override
  @JsonKey(name: 'page')
  int get currentPageFetched;
  @override
  @JsonKey(name: 'pages')
  int get totalPagesAvailable;
  @override
  @JsonKey(ignore: true)
  _$$PointsHistoryImplCopyWith<_$PointsHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PointDetails _$PointDetailsFromJson(Map<String, dynamic> json) {
  return _PointDetails.fromJson(json);
}

/// @nodoc
mixin _$PointDetails {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  List<String>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_date')
  DateTime get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_points')
  int get earnedPoints => throw _privateConstructorUsedError;
  bool get inReview => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_details')
  TaskDetails get taskDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointDetailsCopyWith<PointDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointDetailsCopyWith<$Res> {
  factory $PointDetailsCopyWith(
          PointDetails value, $Res Function(PointDetails) then) =
      _$PointDetailsCopyWithImpl<$Res, PointDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'user_id') String userId,
      List<String>? media,
      @JsonKey(name: 'completed_date') DateTime completedDate,
      @JsonKey(name: 'earned_points') int earnedPoints,
      bool inReview,
      bool isDeleted,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'task_details') TaskDetails taskDetails});

  $TaskDetailsCopyWith<$Res> get taskDetails;
}

/// @nodoc
class _$PointDetailsCopyWithImpl<$Res, $Val extends PointDetails>
    implements $PointDetailsCopyWith<$Res> {
  _$PointDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? media = freezed,
    Object? completedDate = null,
    Object? earnedPoints = null,
    Object? inReview = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? taskDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      completedDate: null == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
      inReview: null == inReview
          ? _value.inReview
          : inReview // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDetails: null == taskDetails
          ? _value.taskDetails
          : taskDetails // ignore: cast_nullable_to_non_nullable
              as TaskDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskDetailsCopyWith<$Res> get taskDetails {
    return $TaskDetailsCopyWith<$Res>(_value.taskDetails, (value) {
      return _then(_value.copyWith(taskDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PointDetailsImplCopyWith<$Res>
    implements $PointDetailsCopyWith<$Res> {
  factory _$$PointDetailsImplCopyWith(
          _$PointDetailsImpl value, $Res Function(_$PointDetailsImpl) then) =
      __$$PointDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'user_id') String userId,
      List<String>? media,
      @JsonKey(name: 'completed_date') DateTime completedDate,
      @JsonKey(name: 'earned_points') int earnedPoints,
      bool inReview,
      bool isDeleted,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'task_details') TaskDetails taskDetails});

  @override
  $TaskDetailsCopyWith<$Res> get taskDetails;
}

/// @nodoc
class __$$PointDetailsImplCopyWithImpl<$Res>
    extends _$PointDetailsCopyWithImpl<$Res, _$PointDetailsImpl>
    implements _$$PointDetailsImplCopyWith<$Res> {
  __$$PointDetailsImplCopyWithImpl(
      _$PointDetailsImpl _value, $Res Function(_$PointDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? media = freezed,
    Object? completedDate = null,
    Object? earnedPoints = null,
    Object? inReview = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? taskDetails = null,
  }) {
    return _then(_$PointDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      completedDate: null == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earnedPoints: null == earnedPoints
          ? _value.earnedPoints
          : earnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
      inReview: null == inReview
          ? _value.inReview
          : inReview // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDetails: null == taskDetails
          ? _value.taskDetails
          : taskDetails // ignore: cast_nullable_to_non_nullable
              as TaskDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointDetailsImpl implements _PointDetails {
  const _$PointDetailsImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'user_id') required this.userId,
      final List<String>? media,
      @JsonKey(name: 'completed_date') required this.completedDate,
      @JsonKey(name: 'earned_points') required this.earnedPoints,
      required this.inReview,
      required this.isDeleted,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'task_details') required this.taskDetails})
      : _media = media;

  factory _$PointDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointDetailsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  final List<String>? _media;
  @override
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'completed_date')
  final DateTime completedDate;
  @override
  @JsonKey(name: 'earned_points')
  final int earnedPoints;
  @override
  final bool inReview;
  @override
  final bool isDeleted;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'task_details')
  final TaskDetails taskDetails;

  @override
  String toString() {
    return 'PointDetails(id: $id, taskId: $taskId, userId: $userId, media: $media, completedDate: $completedDate, earnedPoints: $earnedPoints, inReview: $inReview, isDeleted: $isDeleted, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, taskDetails: $taskDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.earnedPoints, earnedPoints) ||
                other.earnedPoints == earnedPoints) &&
            (identical(other.inReview, inReview) ||
                other.inReview == inReview) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.taskDetails, taskDetails) ||
                other.taskDetails == taskDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      taskId,
      userId,
      const DeepCollectionEquality().hash(_media),
      completedDate,
      earnedPoints,
      inReview,
      isDeleted,
      status,
      createdAt,
      updatedAt,
      taskDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointDetailsImplCopyWith<_$PointDetailsImpl> get copyWith =>
      __$$PointDetailsImplCopyWithImpl<_$PointDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointDetailsImplToJson(
      this,
    );
  }
}

abstract class _PointDetails implements PointDetails {
  const factory _PointDetails(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'user_id') required final String userId,
      final List<String>? media,
      @JsonKey(name: 'completed_date') required final DateTime completedDate,
      @JsonKey(name: 'earned_points') required final int earnedPoints,
      required final bool inReview,
      required final bool isDeleted,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: 'task_details')
      required final TaskDetails taskDetails}) = _$PointDetailsImpl;

  factory _PointDetails.fromJson(Map<String, dynamic> json) =
      _$PointDetailsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  List<String>? get media;
  @override
  @JsonKey(name: 'completed_date')
  DateTime get completedDate;
  @override
  @JsonKey(name: 'earned_points')
  int get earnedPoints;
  @override
  bool get inReview;
  @override
  bool get isDeleted;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'task_details')
  TaskDetails get taskDetails;
  @override
  @JsonKey(ignore: true)
  _$$PointDetailsImplCopyWith<_$PointDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskDetails _$TaskDetailsFromJson(Map<String, dynamic> json) {
  return _TaskDetails.fromJson(json);
}

/// @nodoc
mixin _$TaskDetails {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDetailsCopyWith<TaskDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailsCopyWith<$Res> {
  factory $TaskDetailsCopyWith(
          TaskDetails value, $Res Function(TaskDetails) then) =
      _$TaskDetailsCopyWithImpl<$Res, TaskDetails>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String image, String name});
}

/// @nodoc
class _$TaskDetailsCopyWithImpl<$Res, $Val extends TaskDetails>
    implements $TaskDetailsCopyWith<$Res> {
  _$TaskDetailsCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDetailsImplCopyWith<$Res>
    implements $TaskDetailsCopyWith<$Res> {
  factory _$$TaskDetailsImplCopyWith(
          _$TaskDetailsImpl value, $Res Function(_$TaskDetailsImpl) then) =
      __$$TaskDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String image, String name});
}

/// @nodoc
class __$$TaskDetailsImplCopyWithImpl<$Res>
    extends _$TaskDetailsCopyWithImpl<$Res, _$TaskDetailsImpl>
    implements _$$TaskDetailsImplCopyWith<$Res> {
  __$$TaskDetailsImplCopyWithImpl(
      _$TaskDetailsImpl _value, $Res Function(_$TaskDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_$TaskDetailsImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDetailsImpl implements _TaskDetails {
  const _$TaskDetailsImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.name});

  factory _$TaskDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDetailsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String image;
  @override
  final String name;

  @override
  String toString() {
    return 'TaskDetails(id: $id, image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsImplCopyWith<_$TaskDetailsImpl> get copyWith =>
      __$$TaskDetailsImplCopyWithImpl<_$TaskDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDetailsImplToJson(
      this,
    );
  }
}

abstract class _TaskDetails implements TaskDetails {
  const factory _TaskDetails(
      {@JsonKey(name: '_id') required final String id,
      required final String image,
      required final String name}) = _$TaskDetailsImpl;

  factory _TaskDetails.fromJson(Map<String, dynamic> json) =
      _$TaskDetailsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailsImplCopyWith<_$TaskDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
