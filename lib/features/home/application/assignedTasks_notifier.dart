import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/utils/app_log.dart';

import '../../../core/infrastructure/hive_database.dart';
import '../../../core/infrastructure/network_api_services.dart';
import '../../../core/utils/toast.dart';
import '../domain/assignedTasks_model.dart';
import 'assignedTasks_state.dart';

class AssignedTasksNotifier extends StateNotifier<AssignedTasksState> {
  AssignedTasksNotifier(
    this._networkApiService,
    this._hiveDatabase,
  ) : super(AssignedTasksState.initial()) {
    // Initialize any necessary variables or fetch initial data
    fetchAssignedTasks();
  }

  final NetworkApiService _networkApiService;
  final HiveDatabase _hiveDatabase;

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
}
