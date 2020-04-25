import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<loginState> buildReducer() {
  return asReducer(
    <Object, Reducer<loginState>>{
      loginAction.action: _onAction,
    },
  );
}

loginState _onAction(loginState state, Action action) {
  final loginState newState = state.clone();
  return newState;
}
