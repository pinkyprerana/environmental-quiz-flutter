import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/features/wallet/application/wallet_notifier.dart';
import 'package:green_quest_app/features/wallet/application/wallet_state.dart';
import '../../../core/shared/providers.dart';

final walletNotifierProvider =
    StateNotifierProvider<WalletNotifier, WalletState>((ref) =>
        WalletNotifier(ref.watch(networkService), ref.watch(hiveProvider)));
