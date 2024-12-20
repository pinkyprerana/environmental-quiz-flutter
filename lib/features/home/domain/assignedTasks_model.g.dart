// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignedTasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignedTasksModelImpl _$$AssignedTasksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignedTasksModelImpl(
      status: (json['status'] as num).toInt(),
      type: json['type'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DataOfAssignedTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$AssignedTasksModelImplToJson(
        _$AssignedTasksModelImpl instance) =>
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

_$DataOfAssignedTasksImpl _$$DataOfAssignedTasksImplFromJson(
        Map<String, dynamic> json) =>
    _$DataOfAssignedTasksImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      description: json['description'] as String,
      endDate: DateTime.parse(json['end_date'] as String),
      point: (json['point'] as num).toInt(),
      status: json['status'] as String,
      assignedTaskList: AssignedTaskList.fromJson(
          json['assigned_task_list'] as Map<String, dynamic>),
      categoriesDetails: CategoriesDetails.fromJson(
          json['categories_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataOfAssignedTasksImplToJson(
        _$DataOfAssignedTasksImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'category_id': instance.categoryId,
      'description': instance.description,
      'end_date': instance.endDate.toIso8601String(),
      'point': instance.point,
      'status': instance.status,
      'assigned_task_list': instance.assignedTaskList,
      'categories_details': instance.categoriesDetails,
    };

_$AssignedTaskListImpl _$$AssignedTaskListImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignedTaskListImpl(
      id: json['_id'] as String,
      userId: json['user_id'] as String,
      taskId: json['task_id'] as String,
      completedDate: json['completed_date'] == null
          ? null
          : DateTime.parse(json['completed_date'] as String),
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      inReview: json['inReview'] as bool,
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AssignedTaskListImplToJson(
        _$AssignedTaskListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'completed_date': instance.completedDate?.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'inReview': instance.inReview,
      'media': instance.media,
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
