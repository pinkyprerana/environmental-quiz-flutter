// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myTasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyTasksModelImpl _$$MyTasksModelImplFromJson(Map<String, dynamic> json) =>
    _$MyTasksModelImpl(
      id: json['_id'] as String,
      amount: (json['task'] as num).toDouble(),
      orderId: json['task_id'] as String,
      orderDate: json['task_date'] as String,
      status: json['status'] as String,
      taskDetails:
          TaskDetails.fromJson(json['task_details'] as Map<String, dynamic>),
      confirmationDate: json['confirmation_date'] as String?,
      shippingAddressId: json['address_id'] as String,
      orderStatus: json['task_status'] as String,
      isDeleted: json['isDeleted'] as bool?,
      createdAt: json['startedAt'] as String,
      updatedAt: json['completedAt'] as String,
      avgRating: (json['avg_rating'] as num).toInt(),
    );

Map<String, dynamic> _$$MyTasksModelImplToJson(_$MyTasksModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'task': instance.amount,
      'task_id': instance.orderId,
      'task_date': instance.orderDate,
      'status': instance.status,
      'task_details': instance.taskDetails,
      'confirmation_date': instance.confirmationDate,
      'address_id': instance.shippingAddressId,
      'task_status': instance.orderStatus,
      'isDeleted': instance.isDeleted,
      'startedAt': instance.createdAt,
      'completedAt': instance.updatedAt,
      'avg_rating': instance.avgRating,
    };

_$TaskDetailsImpl _$$TaskDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TaskDetailsImpl(
      productId: json['task_id'] as String,
      qty: (json['task_details'] as num).toInt(),
      price: (json['points'] as num).toDouble(),
      title: json['title'] as String,
      imageUrl: json['image_url'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$TaskDetailsImplToJson(_$TaskDetailsImpl instance) =>
    <String, dynamic>{
      'task_id': instance.productId,
      'task_details': instance.qty,
      'points': instance.price,
      'title': instance.title,
      'image_url': instance.imageUrl,
      '_id': instance.id,
    };
