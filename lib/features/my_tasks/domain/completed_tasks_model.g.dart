// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedTasksModelImpl _$$CompletedTasksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedTasksModelImpl(
      status: (json['status'] as num).toInt(),
      type: json['type'] as String,
      message: json['message'] as String,
      completedTasks: (json['data'] as List<dynamic>)
          .map((e) => CompletedTasks.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCompletedTasks: (json['total'] as num).toInt(),
      currentPageFetched: (json['page'] as num).toInt(),
      totalPagesAvailable: (json['pages'] as num).toInt(),
      taskPerPage: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$CompletedTasksModelImplToJson(
        _$CompletedTasksModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'message': instance.message,
      'data': instance.completedTasks,
      'total': instance.totalCompletedTasks,
      'page': instance.currentPageFetched,
      'pages': instance.totalPagesAvailable,
      'limit': instance.taskPerPage,
    };

_$CompletedTasksImpl _$$CompletedTasksImplFromJson(Map<String, dynamic> json) =>
    _$CompletedTasksImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      description: json['description'] as String,
      endDate: DateTime.parse(json['end_date'] as String),
      point: (json['point'] as num).toInt(),
      status: json['status'] as String,
      assignedTasks: AssignedTasks.fromJson(
          json['assigned_task_list'] as Map<String, dynamic>),
      categoryDetails: CategoryDetails.fromJson(
          json['categories_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletedTasksImplToJson(
        _$CompletedTasksImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'category_id': instance.categoryId,
      'description': instance.description,
      'end_date': instance.endDate.toIso8601String(),
      'point': instance.point,
      'status': instance.status,
      'assigned_task_list': instance.assignedTasks,
      'categories_details': instance.categoryDetails,
    };

_$AssignedTasksImpl _$$AssignedTasksImplFromJson(Map<String, dynamic> json) =>
    _$AssignedTasksImpl(
      id: json['_id'] as String,
      userId: json['user_id'] as String,
      taskId: json['task_id'] as String,
      completedDate: DateTime.parse(json['completed_date'] as String),
      isDeleted: json['isDeleted'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      inReview: json['inReview'] as bool,
      status: json['status'] as String,
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
      earnedPoints: (json['earned_points'] as num).toInt(),
    );

Map<String, dynamic> _$$AssignedTasksImplToJson(_$AssignedTasksImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'completed_date': instance.completedDate.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'inReview': instance.inReview,
      'status': instance.status,
      'media': instance.media,
      'earned_points': instance.earnedPoints,
    };

_$CategoryDetailsImpl _$$CategoryDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDetailsImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryDetailsImplToJson(
        _$CategoryDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
