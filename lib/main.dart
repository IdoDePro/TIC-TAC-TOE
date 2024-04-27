import 'package:flutter/material.dart';
import 'package:project/app.dart';
import 'package:project/reducer.dart';
import 'package:redux/redux.dart';
import 'app_state.dart';

void main() {
  final Store<AppState> store =
      Store<AppState>(reduce, initialState: const AppState.init());
  runApp(App(store: store));
}
