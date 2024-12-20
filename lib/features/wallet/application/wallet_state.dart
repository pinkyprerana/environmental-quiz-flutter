// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_quest_app/features/wallet/domain/points_history.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    @Default(false) bool isLoading,
    @Default([]) List<PointDetails> pointHistoryList,
  }) = _WalletState;

  const WalletState._();
}
