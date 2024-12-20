// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'myTasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyTasksModel _$MyTasksModelFromJson(Map<String, dynamic> json) {
  return _MyTasksModel.fromJson(json);
}

/// @nodoc
mixin _$MyTasksModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_date')
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_details')
  TaskDetails get taskDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_date')
  String? get confirmationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  String get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_status')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'startedAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  int get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyTasksModelCopyWith<MyTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyTasksModelCopyWith<$Res> {
  factory $MyTasksModelCopyWith(
          MyTasksModel value, $Res Function(MyTasksModel) then) =
      _$MyTasksModelCopyWithImpl<$Res, MyTasksModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'task') double amount,
      @JsonKey(name: 'task_id') String orderId,
      @JsonKey(name: 'task_date') String orderDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'task_details') TaskDetails taskDetails,
      @JsonKey(name: 'confirmation_date') String? confirmationDate,
      @JsonKey(name: 'address_id') String shippingAddressId,
      @JsonKey(name: 'task_status') String orderStatus,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'startedAt') String createdAt,
      @JsonKey(name: 'completedAt') String updatedAt,
      @JsonKey(name: 'avg_rating') int avgRating});

  $TaskDetailsCopyWith<$Res> get taskDetails;
}

/// @nodoc
class _$MyTasksModelCopyWithImpl<$Res, $Val extends MyTasksModel>
    implements $MyTasksModelCopyWith<$Res> {
  _$MyTasksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? orderId = null,
    Object? orderDate = null,
    Object? status = null,
    Object? taskDetails = null,
    Object? confirmationDate = freezed,
    Object? shippingAddressId = null,
    Object? orderStatus = null,
    Object? isDeleted = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? avgRating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taskDetails: null == taskDetails
          ? _value.taskDetails
          : taskDetails // ignore: cast_nullable_to_non_nullable
              as TaskDetails,
      confirmationDate: freezed == confirmationDate
          ? _value.confirmationDate
          : confirmationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: null == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$MyTasksModelImplCopyWith<$Res>
    implements $MyTasksModelCopyWith<$Res> {
  factory _$$MyTasksModelImplCopyWith(
          _$MyTasksModelImpl value, $Res Function(_$MyTasksModelImpl) then) =
      __$$MyTasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'task') double amount,
      @JsonKey(name: 'task_id') String orderId,
      @JsonKey(name: 'task_date') String orderDate,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'task_details') TaskDetails taskDetails,
      @JsonKey(name: 'confirmation_date') String? confirmationDate,
      @JsonKey(name: 'address_id') String shippingAddressId,
      @JsonKey(name: 'task_status') String orderStatus,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'startedAt') String createdAt,
      @JsonKey(name: 'completedAt') String updatedAt,
      @JsonKey(name: 'avg_rating') int avgRating});

  @override
  $TaskDetailsCopyWith<$Res> get taskDetails;
}

/// @nodoc
class __$$MyTasksModelImplCopyWithImpl<$Res>
    extends _$MyTasksModelCopyWithImpl<$Res, _$MyTasksModelImpl>
    implements _$$MyTasksModelImplCopyWith<$Res> {
  __$$MyTasksModelImplCopyWithImpl(
      _$MyTasksModelImpl _value, $Res Function(_$MyTasksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? orderId = null,
    Object? orderDate = null,
    Object? status = null,
    Object? taskDetails = null,
    Object? confirmationDate = freezed,
    Object? shippingAddressId = null,
    Object? orderStatus = null,
    Object? isDeleted = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? avgRating = null,
  }) {
    return _then(_$MyTasksModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taskDetails: null == taskDetails
          ? _value.taskDetails
          : taskDetails // ignore: cast_nullable_to_non_nullable
              as TaskDetails,
      confirmationDate: freezed == confirmationDate
          ? _value.confirmationDate
          : confirmationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: null == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyTasksModelImpl implements _MyTasksModel {
  const _$MyTasksModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'task') required this.amount,
      @JsonKey(name: 'task_id') required this.orderId,
      @JsonKey(name: 'task_date') required this.orderDate,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'task_details') required this.taskDetails,
      @JsonKey(name: 'confirmation_date') this.confirmationDate,
      @JsonKey(name: 'address_id') required this.shippingAddressId,
      @JsonKey(name: 'task_status') required this.orderStatus,
      @JsonKey(name: 'isDeleted') this.isDeleted,
      @JsonKey(name: 'startedAt') required this.createdAt,
      @JsonKey(name: 'completedAt') required this.updatedAt,
      @JsonKey(name: 'avg_rating') required this.avgRating});

  factory _$MyTasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyTasksModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'task')
  final double amount;
  @override
  @JsonKey(name: 'task_id')
  final String orderId;
  @override
  @JsonKey(name: 'task_date')
  final String orderDate;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'task_details')
  final TaskDetails taskDetails;
  @override
  @JsonKey(name: 'confirmation_date')
  final String? confirmationDate;
  @override
  @JsonKey(name: 'address_id')
  final String shippingAddressId;
  @override
  @JsonKey(name: 'task_status')
  final String orderStatus;
  @override
  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'startedAt')
  final String createdAt;
  @override
  @JsonKey(name: 'completedAt')
  final String updatedAt;
  @override
  @JsonKey(name: 'avg_rating')
  final int avgRating;

  @override
  String toString() {
    return 'MyTasksModel(id: $id, amount: $amount, orderId: $orderId, orderDate: $orderDate, status: $status, taskDetails: $taskDetails, confirmationDate: $confirmationDate, shippingAddressId: $shippingAddressId, orderStatus: $orderStatus, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, avgRating: $avgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyTasksModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.taskDetails, taskDetails) ||
                other.taskDetails == taskDetails) &&
            (identical(other.confirmationDate, confirmationDate) ||
                other.confirmationDate == confirmationDate) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      orderId,
      orderDate,
      status,
      taskDetails,
      confirmationDate,
      shippingAddressId,
      orderStatus,
      isDeleted,
      createdAt,
      updatedAt,
      avgRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyTasksModelImplCopyWith<_$MyTasksModelImpl> get copyWith =>
      __$$MyTasksModelImplCopyWithImpl<_$MyTasksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyTasksModelImplToJson(
      this,
    );
  }
}

abstract class _MyTasksModel implements MyTasksModel {
  const factory _MyTasksModel(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'task') required final double amount,
          @JsonKey(name: 'task_id') required final String orderId,
          @JsonKey(name: 'task_date') required final String orderDate,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'task_details') required final TaskDetails taskDetails,
          @JsonKey(name: 'confirmation_date') final String? confirmationDate,
          @JsonKey(name: 'address_id') required final String shippingAddressId,
          @JsonKey(name: 'task_status') required final String orderStatus,
          @JsonKey(name: 'isDeleted') final bool? isDeleted,
          @JsonKey(name: 'startedAt') required final String createdAt,
          @JsonKey(name: 'completedAt') required final String updatedAt,
          @JsonKey(name: 'avg_rating') required final int avgRating}) =
      _$MyTasksModelImpl;

  factory _MyTasksModel.fromJson(Map<String, dynamic> json) =
      _$MyTasksModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'task')
  double get amount;
  @override
  @JsonKey(name: 'task_id')
  String get orderId;
  @override
  @JsonKey(name: 'task_date')
  String get orderDate;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'task_details')
  TaskDetails get taskDetails;
  @override
  @JsonKey(name: 'confirmation_date')
  String? get confirmationDate;
  @override
  @JsonKey(name: 'address_id')
  String get shippingAddressId;
  @override
  @JsonKey(name: 'task_status')
  String get orderStatus;
  @override
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted;
  @override
  @JsonKey(name: 'startedAt')
  String get createdAt;
  @override
  @JsonKey(name: 'completedAt')
  String get updatedAt;
  @override
  @JsonKey(name: 'avg_rating')
  int get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$MyTasksModelImplCopyWith<_$MyTasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskDetails _$TaskDetailsFromJson(Map<String, dynamic> json) {
  return _TaskDetails.fromJson(json);
}

/// @nodoc
mixin _$TaskDetails {
  @JsonKey(name: 'task_id')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_details')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'task_id') String productId,
      @JsonKey(name: 'task_details') int qty,
      @JsonKey(name: 'points') double price,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: '_id') String id});
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
    Object? productId = null,
    Object? qty = null,
    Object? price = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: 'task_id') String productId,
      @JsonKey(name: 'task_details') int qty,
      @JsonKey(name: 'points') double price,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: '_id') String id});
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
    Object? productId = null,
    Object? qty = null,
    Object? price = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? id = null,
  }) {
    return _then(_$TaskDetailsImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDetailsImpl implements _TaskDetails {
  const _$TaskDetailsImpl(
      {@JsonKey(name: 'task_id') required this.productId,
      @JsonKey(name: 'task_details') required this.qty,
      @JsonKey(name: 'points') required this.price,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: '_id') required this.id});

  factory _$TaskDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'task_id')
  final String productId;
  @override
  @JsonKey(name: 'task_details')
  final int qty;
  @override
  @JsonKey(name: 'points')
  final double price;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'TaskDetails(productId: $productId, qty: $qty, price: $price, title: $title, imageUrl: $imageUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, qty, price, title, imageUrl, id);

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
      {@JsonKey(name: 'task_id') required final String productId,
      @JsonKey(name: 'task_details') required final int qty,
      @JsonKey(name: 'points') required final double price,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: '_id') required final String id}) = _$TaskDetailsImpl;

  factory _TaskDetails.fromJson(Map<String, dynamic> json) =
      _$TaskDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'task_id')
  String get productId;
  @override
  @JsonKey(name: 'task_details')
  int get qty;
  @override
  @JsonKey(name: 'points')
  double get price;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailsImplCopyWith<_$TaskDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
