import "package:flutter/material.dart";
import "package:flutter_redux/flutter_redux.dart";
import "package:project/actions.dart";
import "package:project/app_state.dart";
import "package:project/tic_tac_toe_board/game_props.dart";
import "package:redux/src/store.dart";

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StoreConnector<AppState, GameProps>(
                converter: gamePropsFromStore,
                builder: (final BuildContext context, final GameProps props) =>
                    SizedBox(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: List.generate(
                      9,
                      (final int index) => Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                  width: 500,
                  height: 500,
                ),
              ),
            ],
          ),
        ),
      );
}
