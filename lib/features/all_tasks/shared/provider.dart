import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/shared/providers.dart';
import '../application/task_notifier.dart';
import '../application/task_state.dart';

final allTasksNotifierProvider =
    StateNotifierProvider.autoDispose<AllTasksNotifier, AllTasksState>((ref) =>
        AllTasksNotifier(ref.watch(networkService), ref.watch(hiveProvider)));
