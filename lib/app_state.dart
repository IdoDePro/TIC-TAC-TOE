import "package:flutter/material.dart";
import "package:project/tic_tac_toe_board/game_model.dart";

@immutable
class AppState {
  AppState({required this.game, required this.playerTurn});

  AppState.init()
      : game = GameModel.empty(),
        playerTurn = 0;

  final GameModel game;
  final int playerTurn;
}
