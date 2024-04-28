import "package:project/app_state.dart";
import "package:project/tic_tac_toe_board/game_model.dart";
import "package:redux/redux.dart";

class GameProps {
  GameProps({
    required this.game,
    required this.turn,
  });

  final GameModel game;
  final int turn;
}

GameProps gamePropsFromStore(final Store<AppState> store) =>
    GameProps(game: store.state.game, turn: store.state.playerTurn);
