import 'package:eight_queen_problem_game/features/chess_board/domain/repositories/chess_board_repository.dart';
import 'package:eight_queen_problem_game/features/chess_board/data/data_sources/chess_board_data_source.dart';



/// ChessBoardRepositoryImpl is the concrete implementation of the ChessBoardRepository
/// interface.
/// This class implements the methods defined in ChessBoardRepository to interact
/// with data. It acts as a bridge between the domain layer
/// (use cases) and the data layer (data sources).
class ChessBoardRepositoryImpl implements ChessBoardRepository {
      
   final ChessBoardDataSource  chessBoardDataSource;
   ChessBoardRepositoryImpl(this.chessBoardDataSource);
}