import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart';

part 'my_tasks_state.freezed.dart';

@freezed
class MyTasksState with _$MyTasksState {
  const factory MyTasksState({
    @Default(false) bool isLoading,
    @Default([]) List<CompletedTasks> completedTasks,
  }) = _MyTasksState;

  const MyTasksState._();
}
