import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_quest_app/features/profile/domain/profile_model.dart';

import '../domain/myTasks_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(ProfileModel()) ProfileModel? profileModel,
    @Default([]) List<MyTasksModel> myTasksList,
  }) = _ProfileState;
}
