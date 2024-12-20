// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'points_history.freezed.dart';
part 'points_history.g.dart';

@freezed
class PointsHistoryModel with _$PointsHistoryModel {
  const factory PointsHistoryModel({
    required int status,
    required String type,
    required String message,
    @JsonKey(name: 'data') required PointsHistory pointsHistory,
  }) = _PointsHistoryModel;

  factory PointsHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PointsHistoryModelFromJson(json);
}

@freezed
class PointsHistory with _$PointsHistory {
  const factory PointsHistory({
    @JsonKey(name: 'docs') required List<PointDetails> pointDetails,
    @JsonKey(name: 'total') required int totalCompletedTasks,
    @JsonKey(name: 'limit') required int taskPerPage,
    @JsonKey(name: 'page') required int currentPageFetched,
    @JsonKey(name: 'pages') required int totalPagesAvailable,
  }) = _PointsHistory;

  factory PointsHistory.fromJson(Map<String, dynamic> json) =>
      _$PointsHistoryFromJson(json);
}

@freezed
class PointDetails with _$PointDetails {
  const factory PointDetails({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'user_id') required String userId,
    List<String>? media,
    @JsonKey(name: 'completed_date') required DateTime completedDate,
    @JsonKey(name: 'earned_points') required int earnedPoints,
    required bool inReview,
    required bool isDeleted,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: 'task_details') required TaskDetails taskDetails,
  }) = _PointDetails;

  factory PointDetails.fromJson(Map<String, dynamic> json) =>
      _$PointDetailsFromJson(json);
}

@freezed
class TaskDetails with _$TaskDetails {
  const factory TaskDetails({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String name,
  }) = _TaskDetails;

  factory TaskDetails.fromJson(Map<String, dynamic> json) =>
      _$TaskDetailsFromJson(json);
}
