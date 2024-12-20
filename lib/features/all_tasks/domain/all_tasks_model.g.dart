// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllTasksModelImpl _$$AllTasksModelImplFromJson(Map<String, dynamic> json) =>
    _$AllTasksModelImpl(
      status: (json['status'] as num).toInt(),
      type: json['type'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DataOfAllTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$AllTasksModelImplToJson(_$AllTasksModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'message': instance.message,
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'limit': instance.limit,
    };

_$DataOfAllTasksImpl _$$DataOfAllTasksImplFromJson(Map<String, dynamic> json) =>
    _$DataOfAllTasksImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      description: json['description'] as String,
      endDate: DateTime.parse(json['end_date'] as String),
      point: (json['point'] as num).toInt(),
      status: json['status'] as String,
      categoriesDetails: CategoriesDetails.fromJson(
          json['categories_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataOfAllTasksImplToJson(
        _$DataOfAllTasksImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'category_id': instance.categoryId,
      'description': instance.description,
      'end_date': instance.endDate.toIso8601String(),
      'point': instance.point,
      'status': instance.status,
      'categories_details': instance.categoriesDetails,
    };

_$CategoriesDetailsImpl _$$CategoriesDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesDetailsImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoriesDetailsImplToJson(
        _$CategoriesDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
