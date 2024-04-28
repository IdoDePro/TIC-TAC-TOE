import "package:flutter/material.dart";

enum TicOrTac {
  tic(Icons.close),
  tac(Icons.circle_outlined),
  empty(Icons.hourglass_empty_rounded);

  const TicOrTac(this.icon);

  final IconData icon;
}
