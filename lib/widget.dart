import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:project/action.dart';
import 'package:project/app_state.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Connect the Store to a Text Widget that renders the current
            // count.
            //
            // We'll wrap the Text Widget in a `StoreConnector` Widget. The
            // `StoreConnector` will find the `Store` from the nearest
            // `StoreProvider` ancestor, convert it into a String of the
            // latest count, and pass that String  to the `builder` function
            // as the `count`.
            //
            // Every time the button is tapped, an action is dispatched and
            // run through the reducer. After the reducer updates the state,
            // the Widget will be automatically rebuilt with the latest
            // count. No need to manually manage subscriptions or Streams!
            StoreConnector<AppState, String>(
              converter: (store) => store.state.value.toString(),
              builder: (context, count) {
                return Text(
                  'The button has been pushed this many times: $count',
                );
              },
            )
          ],
        ),
      ),
      // Connect the Store to a FloatingActionButton. In this case, we'll
      // use the Store to build a callback that will dispatch an Increment
      // Action.
      //
      // Then, we'll pass this callback to the button's `onPressed` handler.
      floatingActionButton: StoreConnector<AppState, VoidCallback>(
        converter: (store) {
          // Return a `VoidCallback`, which is a fancy name for a function
          // with no parameters and no return value.
          // It only dispatches an Increment action.
          return () => store.dispatch(AppAction.add);
        },
        builder: (context, callback) {
          return FloatingActionButton(
            // Attach the `callback` to the `onPressed` attribute
            onPressed: callback,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
