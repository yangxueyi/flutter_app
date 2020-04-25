import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/Api.dart';

import 'action.dart';
import 'state.dart';

Reducer<gridState> buildReducer() {
  return asReducer(
    <Object, Reducer<gridState>>{
      gridAction.action: _onAction,
      gridAction.getGridData: _onGridData,
    },
  );
}

gridState _onAction(gridState state, Action action) {
  final gridState newState = state.clone();
  return newState;
}

gridState _onGridData(gridState state, Action action) {
  final gridState myState = state.clone()..gridModel = Api().getGridData();
  return myState;
}
