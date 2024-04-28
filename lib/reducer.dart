import "package:project/actions.dart";
import "package:project/app_state.dart";
import "package:project/tic_or_tac.dart";

AppState reducer(final AppState state, final dynamic action) {
  if (action is Clicked) {
    state.game.places[action.clickedIndex] =
        action.turn == 0 ? TicOrTac.tic : TicOrTac.tac;
    return AppState(game: state.game, playerTurn: 1 - action.turn);
  }
  return state;
}
