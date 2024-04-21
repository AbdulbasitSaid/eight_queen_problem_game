import 'package:eight_queen_problem_game/features/chess_board/domain/repositories/chess_board_repository.dart';



/// use case is a class responsible for encapsulating a specific piece of business logic or 
/// a particular operation that your application needs to perform.
/// It acts as a bridge between the presentation
/// layer and the data layer.
class ChessBoardUseCase {
	  
   final ChessBoardRepository chessBoardRepository;
   ChessBoardUseCase(this.chessBoardRepository);
}