import 'package:freezed_annotation/freezed_annotation.dart';
part 'safe_check_model.freezed.dart';

@freezed
class SafeCheckModel with _$SafeCheckModel {
  const factory SafeCheckModel({
    required bool isSafe,
    required Map<String, int>? attackingQueenPosition,
  }) = _SafeCheckModel;
}
