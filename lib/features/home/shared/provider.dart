import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/shared/providers.dart';
import '../application/assignedTasks_notifier.dart';
import '../application/assignedTasks_state.dart';

final assignedTasksNotifierProvider = StateNotifierProvider.autoDispose<
        AssignedTasksNotifier, AssignedTasksState>(
    (ref) => AssignedTasksNotifier(
        ref.watch(networkService), ref.watch(hiveProvider)));
