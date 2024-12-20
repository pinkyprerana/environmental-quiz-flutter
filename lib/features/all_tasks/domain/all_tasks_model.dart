// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_tasks_model.freezed.dart';
part 'all_tasks_model.g.dart';

@freezed
class AllTasksModel with _$AllTasksModel {
  factory AllTasksModel({
    required int status,
    required String type,
    required String message,
    required List<DataOfAllTasks> data,
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _AllTasksModel;

  factory AllTasksModel.fromJson(Map<String, dynamic> json) =>
      _$AllTasksModelFromJson(json);
}

@freezed
class DataOfAllTasks with _$DataOfAllTasks {
  factory DataOfAllTasks({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String name,
    @JsonKey(name: 'category_id') required String categoryId,
    required String description,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required int point,
    required String status,
    @JsonKey(name: 'categories_details')
    required CategoriesDetails categoriesDetails,
  }) = _DataOfAllTasks;

  factory DataOfAllTasks.fromJson(Map<String, dynamic> json) => _$DataOfAllTasksFromJson(json);
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
