// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignedTasks_model.freezed.dart';
part 'assignedTasks_model.g.dart';

@freezed
class AssignedTasksModel with _$AssignedTasksModel {
  factory AssignedTasksModel({
    required int status,
    required String type,
    required String message,
    required List<DataOfAssignedTasks> data,
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _AssignedTasksModel;

  factory AssignedTasksModel.fromJson(Map<String, dynamic> json) =>
      _$AssignedTasksModelFromJson(json);
}

@freezed
class DataOfAssignedTasks with _$DataOfAssignedTasks {
  factory DataOfAssignedTasks({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String name,
    @JsonKey(name: 'category_id') required String categoryId,
    required String description,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required int point,
    required String status,
    @JsonKey(name: 'assigned_task_list')
    required AssignedTaskList assignedTaskList,
    @JsonKey(name: 'categories_details')
    required CategoriesDetails categoriesDetails,
  }) = _DataOfAssignedTasks;

  factory DataOfAssignedTasks.fromJson(Map<String, dynamic> json) => _$DataOfAssignedTasksFromJson(json);
}

@freezed
class AssignedTaskList with _$AssignedTaskList {
  factory AssignedTaskList({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'completed_date') DateTime? completedDate,
    @JsonKey(name: 'isDeleted') required bool isDeleted,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    @JsonKey(name: 'inReview') required bool inReview,
    required List<String> media,
  }) = _AssignedTaskList;

  factory AssignedTaskList.fromJson(Map<String, dynamic> json) =>
      _$AssignedTaskListFromJson(json);
}

@freezed
class CategoriesDetails with _$CategoriesDetails {
  factory CategoriesDetails({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _CategoriesDetails;

  factory CategoriesDetails.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDetailsFromJson(json);
}
