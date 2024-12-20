// import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/features/all_tasks/application/task_state.dart';
import 'package:green_quest_app/features/home/domain/assignedTasks_model.dart';
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart';

import '../../../core/infrastructure/hive_database.dart';
import '../../../core/infrastructure/network_api_services.dart';
import '../../../core/utils/app_log.dart';
import '../../../core/utils/toast.dart';
import '../domain/all_tasks_model.dart';

class AllTasksNotifier extends StateNotifier<AllTasksState> {
  AllTasksNotifier(
    this._networkApiService,
    this._hiveDatabase,
  ) : super(AllTasksState.initial()) {
    // Initialize any necessary variables or fetch initial data
    // fetchTasks();
  }

  // TextEditingController _searchAllTasks = TextEditingController();
  final NetworkApiService _networkApiService;
  final HiveDatabase _hiveDatabase;

  // // Define methods to handle tasks
  // Future<void> fetchTasks() async {
  //   state = state.copyWith(isLoading: true);
  //   try {
  //     var (response, dioException) = await _networkApiService
  //         .postApiRequestWithToken(url: AppUrl.allTasks); //AppUrl.ALL_TASK_URL
  //     final tasksData = response.data;
  //     // print("Received tasks data: $tasksData");
  //     if (response == null && dioException == null) {
  //       showconnectionWasInterruptedToastMesage();
  //     } else if (dioException != null) {
  //       showDioError(dioException);
  //     } else if (tasksData is Map<String, dynamic>) {
  //       final allTasksModel = AllTasksModel.fromJson(tasksData);
  //       state = state.copyWith(
  //           tasks: List<DataOfAllTasks>.from(allTasksModel.data) ?? []);
  //     } else {
  //       throw Exception("Failed to fetch tasks data.");
  //     }
  //     state = state.copyWith(isLoading: false);
  //   } catch (error) {
  //     state = state.copyWith(isLoading: false);
  //     showconnectionWasInterruptedToastMesage();
  //   }
  // }

  void selectedTask(DataOfAllTasks task) {
    state = state.copyWith(selectedTask: task);
  }

  Future<void> acceptTask() async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(
              url: AppUrl.acceptTask,
              body: {'task_id': state.selectedTask!.id});
      final tasksData = response.data;
      // print("Received tasks data: $tasksData");
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else if (tasksData is Map<String, dynamic> &&
          tasksData['status'] == 200) {
        showToastMessage(tasksData['message']);
      } else {
        throw Exception("Failed to fetch tasks data.");
      }
      state = state.copyWith(isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  Future<void> filteredAllTasks() async {
    state = state.copyWith(isLoading: true);

    await fetchAssignedTasks();
    await fetchCompletedTasks();

    // await Future.delayed(const Duration(seconds: 1));

    List<String> assignedTasksIdList = [];
    List<String> completedTasksIdList = [];
    List<DataOfAllTasks> availableTasksList = [];

    for (var task in state.assignedTasks) {
      assignedTasksIdList.add(task.id);
    }

    for (var task in state.completedTasks) {
      completedTasksIdList.add(task.id);
    }

    try {
      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(url: AppUrl.allTasks, body: {
        'status': 'Active',
      });
      final tasksData = response.data;
      // print("Received tasks data: $tasksData");
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else if (tasksData is Map<String, dynamic> &&
          tasksData["status"] == 200) {
        final allTasksModel = AllTasksModel.fromJson(tasksData);
        final allTasksList = allTasksModel.data;

        for (var task in allTasksList) {
          if (!assignedTasksIdList.contains(task.id) &&
              !completedTasksIdList.contains(task.id)) {
            availableTasksList.add(task);
          }
        }

        state = state.copyWith(isLoading: false, tasks: availableTasksList);
        // state =
        //     state.copyWith(tasks: List<Datum>.from(allTasksModel.data) ?? []);
      } else {
        throw Exception("Failed to fetch tasks data.");
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }

    // print("tasksId : $assignedTasksId");
  }

  // Define methods to handle assignedTasks
  Future<void> fetchAssignedTasks() async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) =
          await _networkApiService.postApiRequestWithToken(
              url: AppUrl.getAssignedList); //AppUrl.ASSIGNED_TASK_URL
      final assignedTasksData = response.data;
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else if (assignedTasksData is Map<String, dynamic>) {
        final assignedTasksModel =
            AssignedTasksModel.fromJson(assignedTasksData);
        state = state.copyWith(
            assignedTasks:
                List<DataOfAssignedTasks>.from(assignedTasksModel.data));
      } else {
        throw Exception("Failed to fetch assigned tasks data.");
      }
      state = state.copyWith(isLoading: false);
    } catch (error) {
      AppLog.log(error.toString());
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  Future<void> fetchCompletedTasks() async {
    state = state.copyWith(isLoading: true);

    try {
      var (response, dioException) =
          await _networkApiService.postApiRequestWithToken(
              url: "${AppUrl.BASE_URL}${AppUrl.getCompletedTasksList}");

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        CompletedTasksModel completedTasksModel =
            CompletedTasksModel.fromJson(response.data);
        if (completedTasksModel.status == 200) {
          state = state.copyWith(
              isLoading: false,
              completedTasks: completedTasksModel.completedTasks);
        } else {
          showToastMessage(completedTasksModel.message);
        }
      }
    } catch (error) {
      AppLog.log(error.toString());
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }
}
