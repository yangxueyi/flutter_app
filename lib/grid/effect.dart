import 'package:fish_redux/fish_redux.dart' ;
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutterapp/list/page.dart';
import 'action.dart';
import 'state.dart';

Effect<gridState> buildEffect() {
  return combineEffects(<Object, Effect<gridState>>{
    Lifecycle.initState: _init,//页面初始化
    gridAction.action: _onAction,
    gridAction.goToListPage: _onGoToListAction,
  });
}

void _onAction(Action action, Context<gridState> ctx) {
}

void _init(Action action,Context<gridState> ctx){
  //发送事件到Reducer
  ctx.dispatch(gridActionCreator.onGetGridData());
}

void _onGoToListAction(Action action,Context<gridState> ctx){
  Navigator.of(ctx.context).pushNamed('list_page',arguments: {'number':action.payload});
}
