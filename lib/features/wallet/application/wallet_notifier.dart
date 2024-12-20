import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/infrastructure/hive_database.dart';
import 'package:green_quest_app/core/infrastructure/network_api_services.dart';
import 'package:green_quest_app/core/utils/app_log.dart';
import 'package:green_quest_app/core/utils/toast.dart';
import 'package:green_quest_app/features/wallet/application/wallet_state.dart';
import 'package:green_quest_app/features/wallet/domain/points_history.dart';

class WalletNotifier extends StateNotifier<WalletState> {
  final NetworkApiService _networkApiService;
  final HiveDatabase _hiveDatabase;

  WalletNotifier(this._networkApiService, this._hiveDatabase)
      : super(const WalletState());

  Future<void> fetchPointsHistory() async {
    state = state.copyWith(isLoading: true);

    try {
      var (response, dioException) =
          await _networkApiService.postApiRequestWithToken(
              url: "${AppUrl.BASE_URL}${AppUrl.getPointsHistory}");

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        PointsHistoryModel pointsHistoryModel =
            PointsHistoryModel.fromJson(response.data);
        if (pointsHistoryModel.status == 200) {
          state = state.copyWith(
              pointHistoryList: pointsHistoryModel
                  .pointsHistory.pointDetails.reversed
                  .toList());
        }
      }
    } catch (error) {
      AppLog.log(error.toString());
    }
  }
}
