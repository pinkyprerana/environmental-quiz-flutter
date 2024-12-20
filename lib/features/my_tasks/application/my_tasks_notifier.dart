import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/infrastructure/hive_database.dart';
import 'package:green_quest_app/core/infrastructure/network_api_services.dart';
import 'package:green_quest_app/core/utils/app_log.dart';
import 'package:green_quest_app/core/utils/toast.dart';
import 'package:green_quest_app/features/my_tasks/application/my_tasks_state.dart';
import 'package:green_quest_app/features/my_tasks/domain/completed_tasks_model.dart';

class MyTasksNotifier extends StateNotifier<MyTasksState> {
  final NetworkApiService _networkApiService;

  final HiveDatabase _hiveDatabase;

  MyTasksNotifier(this._networkApiService, this._hiveDatabase)
      : super(const MyTasksState()) {
    fetchCompletedTasks();
  }

  Future<void> updateTask(
      {required List<String?> selectedImages, required String id}) async {
    state = state.copyWith(isLoading: true);

    FormData formData = FormData();

    for (var item in selectedImages) {
      if (item != null) {
        formData.files.add(MapEntry(
            'media',
            await MultipartFile.fromFile(
              item,
              filename: item.split('/').last,
            )));
      }
    }

    formData.fields.add(MapEntry('task_id', id));

    try {
      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(url: AppUrl.updateTask, body: formData);
      state = state.copyWith(
        isLoading: false,
      );
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        AppLog.log(jsonData.toString());
        if (jsonData['status'] == 200) {
          // Image need to be updated

          state = state.copyWith(isLoading: false);
        }

        showToastMessage(jsonData['message'] ?? '');
        // callback?.call();
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
      AppLog.log(e.toString());
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
