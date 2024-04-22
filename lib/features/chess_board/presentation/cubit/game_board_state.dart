import 'package:eight_queen_problem_game/features/chess_board/data/models/board_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_board_state.freezed.dart';

@freezed
sealed class GameBoardState with _$GameBoardState {
  const factory GameBoardState.data(BoardModel boardModel) = Data;
  const factory GameBoardState.loading() = Loading;
  const factory GameBoardState.error(String message) = Error;
}
