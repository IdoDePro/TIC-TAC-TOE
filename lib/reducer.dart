import "package:project/action.dart";
import "package:project/app_state.dart";

AppState increment(final AppState state) => AppState(state.value + 1);

AppState reduce(final AppState state, final dynamic action) {
  if (action == AppAction.add) {
    return increment(state);
  }
  return state;
}
