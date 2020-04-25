import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/list/item/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.action: _onAction,
      ListAction.initList: _onInitList,
    },
  );
}

ListState _onAction(ListState state, Action action) {
  final ListState newState = state.clone();
  return newState;
}

ListState _onInitList(ListState state, Action action) {
  List<ItemState> myList = action.payload;
  final ListState myListState = state.clone();
  myListState.itemList = myList;
  return myListState;
}