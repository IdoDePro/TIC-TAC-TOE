import 'package:project/app.dart';
import 'action.dart';
import 'app_state.dart';

AppState increment(AppState state) {
  return AppState(state.value + 1);
}

AppState reduce(AppState state, dynamic action) {
  if (action == AppAction.add) {
    return increment(state);
  }
  return state;
}
