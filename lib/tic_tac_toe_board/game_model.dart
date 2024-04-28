import "package:project/tic_or_tac.dart";

class GameModel {
  GameModel({
    required this.topLeft,
    required this.topCenter,
    required this.topRight,
    required this.centerLeft,
    required this.center,
    required this.centerRight,
    required this.bottomLeft,
    required this.bottomCenter,
    required this.bottomRight,
  });

  GameModel.empty()
      : topLeft = TicOrTac.empty,
        topCenter = TicOrTac.empty,
        topRight = TicOrTac.empty,
        centerLeft = TicOrTac.empty,
        center = TicOrTac.empty,
        centerRight = TicOrTac.empty,
        bottomLeft = TicOrTac.empty,
        bottomCenter = TicOrTac.empty,
        bottomRight = TicOrTac.empty;

  GameModel copyWith({
    final TicOrTac? topLeft,
    final TicOrTac? topCenter,
    final TicOrTac? topRight,
    final TicOrTac? centerLeft,
    final TicOrTac? center,
    final TicOrTac? centerRight,
    final TicOrTac? bottomLeft,
    final TicOrTac? bottomCenter,
    final TicOrTac? bottomRight,
  }) =>
      GameModel(
        topLeft: topLeft ?? this.topLeft,
        topCenter: topCenter ?? this.topCenter,
        topRight: topRight ?? this.topRight,
        centerLeft: centerLeft ?? this.centerLeft,
        center: center ?? this.center,
        centerRight: centerRight ?? this.centerRight,
        bottomLeft: bottomLeft ?? this.bottomLeft,
        bottomCenter: bottomCenter ?? this.bottomCenter,
        bottomRight: bottomRight ?? this.bottomRight,
      );

  final TicOrTac topLeft;
  final TicOrTac topCenter;
  final TicOrTac topRight;
  final TicOrTac centerLeft;
  final TicOrTac center;
  final TicOrTac centerRight;
  final TicOrTac bottomLeft;
  final TicOrTac bottomCenter;
  final TicOrTac bottomRight;
}
