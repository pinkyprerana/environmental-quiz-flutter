// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllTasksModel _$AllTasksModelFromJson(Map<String, dynamic> json) {
  return _AllTasksModel.fromJson(json);
}

/// @nodoc
mixin _$AllTasksModel {
  int get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DataOfAllTasks> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllTasksModelCopyWith<AllTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTasksModelCopyWith<$Res> {
  factory $AllTasksModelCopyWith(
          AllTasksModel value, $Res Function(AllTasksModel) then) =
      _$AllTasksModelCopyWithImpl<$Res, AllTasksModel>;
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      List<DataOfAllTasks> data,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class _$AllTasksModelCopyWithImpl<$Res, $Val extends AllTasksModel>
    implements $AllTasksModelCopyWith<$Res> {
  _$AllTasksModelCopyWithImpl(this._value, this._then);

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
              as List<DataOfAllTasks>,
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
abstract class _$$AllTasksModelImplCopyWith<$Res>
    implements $AllTasksModelCopyWith<$Res> {
  factory _$$AllTasksModelImplCopyWith(
          _$AllTasksModelImpl value, $Res Function(_$AllTasksModelImpl) then) =
      __$$AllTasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String type,
      String message,
      List<DataOfAllTasks> data,
      int total,
      int page,
      int pages,
      int limit});
}

/// @nodoc
class __$$AllTasksModelImplCopyWithImpl<$Res>
    extends _$AllTasksModelCopyWithImpl<$Res, _$AllTasksModelImpl>
    implements _$$AllTasksModelImplCopyWith<$Res> {
  __$$AllTasksModelImplCopyWithImpl(
      _$AllTasksModelImpl _value, $Res Function(_$AllTasksModelImpl) _then)
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
    return _then(_$AllTasksModelImpl(
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
              as List<DataOfAllTasks>,
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
class _$AllTasksModelImpl implements _AllTasksModel {
  _$AllTasksModelImpl(
      {required this.status,
      required this.type,
      required this.message,
      required final List<DataOfAllTasks> data,
      required this.total,
      required this.page,
      required this.pages,
      required this.limit})
      : _data = data;

  factory _$AllTasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllTasksModelImplFromJson(json);

  @override
  final int status;
  @override
  final String type;
  @override
  final String message;
  final List<DataOfAllTasks> _data;
  @override
  List<DataOfAllTasks> get data {
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
    return 'AllTasksModel(status: $status, type: $type, message: $message, data: $data, total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTasksModelImpl &&
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
  _$$AllTasksModelImplCopyWith<_$AllTasksModelImpl> get copyWith =>
      __$$AllTasksModelImplCopyWithImpl<_$AllTasksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllTasksModelImplToJson(
      this,
    );
  }
}

abstract class _AllTasksModel implements AllTasksModel {
  factory _AllTasksModel(
      {required final int status,
      required final String type,
      required final String message,
      required final List<DataOfAllTasks> data,
      required final int total,
      required final int page,
      required final int pages,
      required final int limit}) = _$AllTasksModelImpl;

  factory _AllTasksModel.fromJson(Map<String, dynamic> json) =
      _$AllTasksModelImpl.fromJson;

  @override
  int get status;
  @override
  String get type;
  @override
  String get message;
  @override
  List<DataOfAllTasks> get data;
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
  _$$AllTasksModelImplCopyWith<_$AllTasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataOfAllTasks _$DataOfAllTasksFromJson(Map<String, dynamic> json) {
  return _DataOfAllTasks.fromJson(json);
}

/// @nodoc
mixin _$DataOfAllTasks {
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
  @JsonKey(name: 'categories_details')
  CategoriesDetails get categoriesDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataOfAllTasksCopyWith<DataOfAllTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataOfAllTasksCopyWith<$Res> {
  factory $DataOfAllTasksCopyWith(
          DataOfAllTasks value, $Res Function(DataOfAllTasks) then) =
      _$DataOfAllTasksCopyWithImpl<$Res, DataOfAllTasks>;
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
      @JsonKey(name: 'categories_details')
      CategoriesDetails categoriesDetails});

  $CategoriesDetailsCopyWith<$Res> get categoriesDetails;
}

/// @nodoc
class _$DataOfAllTasksCopyWithImpl<$Res, $Val extends DataOfAllTasks>
    implements $DataOfAllTasksCopyWith<$Res> {
  _$DataOfAllTasksCopyWithImpl(this._value, this._then);

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
      categoriesDetails: null == categoriesDetails
          ? _value.categoriesDetails
          : categoriesDetails // ignore: cast_nullable_to_non_nullable
              as CategoriesDetails,
    ) as $Val);
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
abstract class _$$DataOfAllTasksImplCopyWith<$Res>
    implements $DataOfAllTasksCopyWith<$Res> {
  factory _$$DataOfAllTasksImplCopyWith(_$DataOfAllTasksImpl value,
          $Res Function(_$DataOfAllTasksImpl) then) =
      __$$DataOfAllTasksImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'categories_details')
      CategoriesDetails categoriesDetails});

  @override
  $CategoriesDetailsCopyWith<$Res> get categoriesDetails;
}

/// @nodoc
class __$$DataOfAllTasksImplCopyWithImpl<$Res>
    extends _$DataOfAllTasksCopyWithImpl<$Res, _$DataOfAllTasksImpl>
    implements _$$DataOfAllTasksImplCopyWith<$Res> {
  __$$DataOfAllTasksImplCopyWithImpl(
      _$DataOfAllTasksImpl _value, $Res Function(_$DataOfAllTasksImpl) _then)
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
    Object? categoriesDetails = null,
  }) {
    return _then(_$DataOfAllTasksImpl(
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
      categoriesDetails: null == categoriesDetails
          ? _value.categoriesDetails
          : categoriesDetails // ignore: cast_nullable_to_non_nullable
              as CategoriesDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataOfAllTasksImpl implements _DataOfAllTasks {
  _$DataOfAllTasksImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.image,
      required this.name,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.description,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.point,
      required this.status,
      @JsonKey(name: 'categories_details') required this.categoriesDetails});

  factory _$DataOfAllTasksImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataOfAllTasksImplFromJson(json);

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
  @JsonKey(name: 'categories_details')
  final CategoriesDetails categoriesDetails;

  @override
  String toString() {
    return 'DataOfAllTasks(id: $id, image: $image, name: $name, categoryId: $categoryId, description: $description, endDate: $endDate, point: $point, status: $status, categoriesDetails: $categoriesDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataOfAllTasksImpl &&
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
            (identical(other.categoriesDetails, categoriesDetails) ||
                other.categoriesDetails == categoriesDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, categoryId,
      description, endDate, point, status, categoriesDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataOfAllTasksImplCopyWith<_$DataOfAllTasksImpl> get copyWith =>
      __$$DataOfAllTasksImplCopyWithImpl<_$DataOfAllTasksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataOfAllTasksImplToJson(
      this,
    );
  }
}

abstract class _DataOfAllTasks implements DataOfAllTasks {
  factory _DataOfAllTasks(
          {@JsonKey(name: '_id') required final String id,
          required final String image,
          required final String name,
          @JsonKey(name: 'category_id') required final String categoryId,
          required final String description,
          @JsonKey(name: 'end_date') required final DateTime endDate,
          required final int point,
          required final String status,
          @JsonKey(name: 'categories_details')
          required final CategoriesDetails categoriesDetails}) =
      _$DataOfAllTasksImpl;

  factory _DataOfAllTasks.fromJson(Map<String, dynamic> json) =
      _$DataOfAllTasksImpl.fromJson;

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
  @JsonKey(name: 'categories_details')
  CategoriesDetails get categoriesDetails;
  @override
  @JsonKey(ignore: true)
  _$$DataOfAllTasksImplCopyWith<_$DataOfAllTasksImpl> get copyWith =>
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
