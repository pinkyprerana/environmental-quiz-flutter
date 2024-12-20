import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/assignedTasks_model.dart';

part 'assignedTasks_state.freezed.dart';

@freezed
class AssignedTasksState with _$AssignedTasksState {
  factory AssignedTasksState({
    @Default(false) bool isLoading,
    required List<DataOfAssignedTasks> assignedTasks,
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _AssignedTasksState;

  factory AssignedTasksState.initial() => AssignedTasksState(
        isLoading: false,
        assignedTasks: [],
        total: 0,
        page: 0,
        pages: 0,
        limit: 0,
      );

  factory AssignedTasksState.fromJson(Map<String, dynamic> json) {
    return AssignedTasksState(
      isLoading: false,
      assignedTasks: (json['data'] as List<dynamic>)
          .map((taskJson) =>
              DataOfAssignedTasks.fromJson(taskJson as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      pages: json['pages'] as int,
      limit: json['limit'] as int,
    );
  }

  const AssignedTasksState._();
}
