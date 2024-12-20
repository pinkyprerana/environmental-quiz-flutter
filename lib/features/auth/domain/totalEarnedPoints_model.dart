import 'package:freezed_annotation/freezed_annotation.dart';

part 'totalEarnedPoints_model.freezed.dart';
part 'totalEarnedPoints_model.g.dart';

@freezed
class TotalEarnedPointsModel with _$TotalEarnedPointsModel {
  const factory TotalEarnedPointsModel({
    required int data,
  }) = _TotalEarnedPointsModel;

  factory TotalEarnedPointsModel.fromJson(Map<String, dynamic> json) =>
      _$TotalEarnedPointsModelFromJson(json);
}
