import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_quest_app/features/home/domain/assignedTasks_model.dart';
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart';

import '../domain/all_tasks_model.dart';

part 'task_state.freezed.dart';

@freezed
class AllTasksState with _$AllTasksState {
  factory AllTasksState({
    @Default(false) bool isLoading,
    required List<DataOfAllTasks> tasks,
    @Default([]) List<DataOfAssignedTasks> assignedTasks,
    @Default([]) List<CompletedTasks> completedTasks,
    required int total,
    required int page,
    DataOfAllTasks? selectedTask,
    required int pages,
    required int limit,
  }) = _AllTasksState;

  factory AllTasksState.initial() => AllTasksState(
        isLoading: false,
        tasks: [],
        total: 0,
        page: 0,
        pages: 0,
        limit: 0,
      );

  factory AllTasksState.fromJson(Map<String, dynamic> json) {
    return AllTasksState(
      isLoading: false,
      tasks: (json['data'] as List<dynamic>)
          .map((taskJson) =>
              DataOfAllTasks.fromJson(taskJson as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      pages: json['pages'] as int,
      limit: json['limit'] as int,
    );
  }

  const AllTasksState._();
}
