import 'package:freezed_annotation/freezed_annotation.dart';
part 'board_model.freezed.dart';

@freezed
class BoardModel with _$BoardModel {
  const factory BoardModel({
    required List<List<int>> board,
    required int remainingQueensCount,
    required int size,
    required bool isSafe,
    required bool isGameCompleted,
    Map<String, int>? attackingQueenPosition,
  }) = _BoardModel;
}
