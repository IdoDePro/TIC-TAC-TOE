import "package:flutter/material.dart";
import "package:flutter_redux/flutter_redux.dart";
import "package:project/action.dart";
import "package:project/app_state.dart";
import "package:redux/src/store.dart";

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StoreConnector<AppState, String>(
                converter: (final Store<AppState> store) =>
                    store.state.value.toString(),
                builder: (final BuildContext context, final String count) =>
                    Text(
                  "The button has been pushed this many times: $count",
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: StoreConnector<AppState, VoidCallback>(
          converter: (final Store<AppState> store) =>
              () => store.dispatch(AppAction.add),
          builder:
              (final BuildContext context, final void Function() callback) =>
                  FloatingActionButton(
            // Attach the `callback` to the `onPressed` attribute
            onPressed: callback,
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
        ),
      );
}
