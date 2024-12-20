// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointsHistoryModelImpl _$$PointsHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PointsHistoryModelImpl(
      status: (json['status'] as num).toInt(),
      type: json['type'] as String,
      message: json['message'] as String,
      pointsHistory:
          PointsHistory.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PointsHistoryModelImplToJson(
        _$PointsHistoryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'message': instance.message,
      'data': instance.pointsHistory,
    };

_$PointsHistoryImpl _$$PointsHistoryImplFromJson(Map<String, dynamic> json) =>
    _$PointsHistoryImpl(
      pointDetails: (json['docs'] as List<dynamic>)
          .map((e) => PointDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCompletedTasks: (json['total'] as num).toInt(),
      taskPerPage: (json['limit'] as num).toInt(),
      currentPageFetched: (json['page'] as num).toInt(),
      totalPagesAvailable: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$PointsHistoryImplToJson(_$PointsHistoryImpl instance) =>
    <String, dynamic>{
      'docs': instance.pointDetails,
      'total': instance.totalCompletedTasks,
      'limit': instance.taskPerPage,
      'page': instance.currentPageFetched,
      'pages': instance.totalPagesAvailable,
    };

_$PointDetailsImpl _$$PointDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PointDetailsImpl(
      id: json['_id'] as String,
      taskId: json['task_id'] as String,
      userId: json['user_id'] as String,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
      completedDate: DateTime.parse(json['completed_date'] as String),
      earnedPoints: (json['earned_points'] as num).toInt(),
      inReview: json['inReview'] as bool,
      isDeleted: json['isDeleted'] as bool,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      taskDetails:
          TaskDetails.fromJson(json['task_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PointDetailsImplToJson(_$PointDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'media': instance.media,
      'completed_date': instance.completedDate.toIso8601String(),
      'earned_points': instance.earnedPoints,
      'inReview': instance.inReview,
      'isDeleted': instance.isDeleted,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'task_details': instance.taskDetails,
    };

_$TaskDetailsImpl _$$TaskDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TaskDetailsImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TaskDetailsImplToJson(_$TaskDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
    };
