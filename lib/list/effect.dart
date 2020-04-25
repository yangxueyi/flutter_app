import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/list/item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _onInitList,//页面初始化
    ListAction.action: _onAction,

  });
}

void _onAction(Action action, Context<ListState> ctx) {}

void _onInitList(Action action, Context<ListState> ctx) {
  List<ItemState> itemList = [
    ItemState(name: "0000"),
    ItemState(name: "1111"),
    ItemState(name: "2222"),
    ItemState(name: "3333"),
    ItemState(name: "4444"),
    ItemState(name: "5555"),
    ItemState(name: "6666"),
    ItemState(name: "7777"),
    ItemState(name: "8888"),
    ItemState(name: "9999"),
  ];
  ctx.dispatch(ListActionCreator.onInitList(itemList));
}
