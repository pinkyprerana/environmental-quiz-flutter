import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/totalEarnedPoints_model.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool checked,
    @Default(false) bool rememberMe,
    @Default('') String token,
    TotalEarnedPointsModel? totalEarnedPoints,
  }) = _AuthState;
  const AuthState._();
}
