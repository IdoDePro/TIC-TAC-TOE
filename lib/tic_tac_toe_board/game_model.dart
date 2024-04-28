import "package:project/tic_or_tac.dart";

class GameModel {
  GameModel({
    required this.places,
  });

  GameModel.empty() : places = List<TicOrTac>.filled(9, TicOrTac.empty);

  final List<TicOrTac> places;
}
