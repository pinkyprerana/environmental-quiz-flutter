// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'completed_tasks_model.freezed.dart';
part 'completed_tasks_model.g.dart';

@freezed
class CompletedTasksModel with _$CompletedTasksModel {
  const factory CompletedTasksModel({
    required int status,
    required String type,
    required String message,
    @JsonKey(name: 'data') required List<CompletedTasks> completedTasks,
    @JsonKey(name: 'total') required int totalCompletedTasks,
    @JsonKey(name: 'page') required int currentPageFetched,
    @JsonKey(name: 'pages') required int totalPagesAvailable,
    @JsonKey(name: 'limit') required int taskPerPage,
  }) = _CompletedTasksModel;

  factory CompletedTasksModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedTasksModelFromJson(json);
}

@freezed
class CompletedTasks with _$CompletedTasks {
  const factory CompletedTasks({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String name,
    @JsonKey(name: 'category_id') required String categoryId,
    required String description,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required int point,
    required String status,
    @JsonKey(name: 'assigned_task_list') required AssignedTasks assignedTasks,
    @JsonKey(name: 'categories_details')
    required CategoryDetails categoryDetails,
  }) = _CompletedTasks;

  factory CompletedTasks.fromJson(Map<String, dynamic> json) =>
      _$CompletedTasksFromJson(json);
}

@freezed
class AssignedTasks with _$AssignedTasks {
  const factory AssignedTasks({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'completed_date') required DateTime completedDate,
    required bool isDeleted,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool inReview,
    required String status,
    required List<String> media,
    @JsonKey(name: 'earned_points') required int earnedPoints,
  }) = _AssignedTasks;

  factory AssignedTasks.fromJson(Map<String, dynamic> json) =>
      _$AssignedTasksFromJson(json);
}

@freezed
class CategoryDetails with _$CategoryDetails {
  const factory CategoryDetails({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _CategoryDetails;

  factory CategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsFromJson(json);
}
