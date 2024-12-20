import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/features/my_tasks/application/my_tasks_notifier.dart';
import 'package:green_quest_app/features/my_tasks/application/my_tasks_state.dart';

import '../../../core/shared/providers.dart';

final myTasksProvider = StateNotifierProvider<MyTasksNotifier, MyTasksState>(
    (ref) =>
        MyTasksNotifier(ref.watch(networkService), ref.watch(hiveProvider)));
