import "package:flutter/material.dart";
import "package:flutter_redux/flutter_redux.dart";
import "package:project/tic_tac_toe_board/game.dart";
import "package:redux/redux.dart";
import "package:project/app_state.dart";

class App extends StatelessWidget {
  const App({super.key, required this.store});
  final Store<AppState> store;

  @override
  Widget build(final BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: "Flutter Demo",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Game(),
        ),
      );
}
