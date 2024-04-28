import "package:flutter/material.dart";

@immutable
class AppState {
  const AppState(this.value);
  const AppState.init() : value = 0;
  final int value;
}
