// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'myTasks_model.freezed.dart';
part 'myTasks_model.g.dart';

@freezed
class MyTasksModel with _$MyTasksModel {
  const factory MyTasksModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'task') required double amount,
    @JsonKey(name: 'task_id') required String orderId,
    @JsonKey(name: 'task_date') required String orderDate,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'task_details') required TaskDetails taskDetails,
    @JsonKey(name: 'confirmation_date') String? confirmationDate,
    @JsonKey(name: 'address_id') required String shippingAddressId,
    @JsonKey(name: 'task_status') required String orderStatus,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'startedAt') required String createdAt,
    @JsonKey(name: 'completedAt') required String updatedAt,
    @JsonKey(name: 'avg_rating') required int avgRating,
  }) = _MyTasksModel;

  factory MyTasksModel.fromJson(Map<String, dynamic> json) =>
      _$MyTasksModelFromJson(json);
}

@freezed
class TaskDetails with _$TaskDetails {
  const factory TaskDetails({
    @JsonKey(name: 'task_id') required String productId,
    @JsonKey(name: 'task_details') required int qty,
    @JsonKey(name: 'points') required double price,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: '_id') required String id,
  }) = _TaskDetails;

  factory TaskDetails.fromJson(Map<String, dynamic> json) =>
      _$TaskDetailsFromJson(json);
}
