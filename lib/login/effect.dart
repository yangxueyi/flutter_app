import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;//action回出现冲突
import 'action.dart';
import 'state.dart';

Effect<loginState> buildEffect() {
  return combineEffects(<Object, Effect<loginState>>{
    loginAction.action: _onAction,
    loginAction.goToGrid: _onGoToGrid,
  });
}

void _onAction(Action action, Context<loginState> ctx) {
  ctx.dispatch(action);
}

//处理action 事件
void _onGoToGrid(Action action,Context<loginState> ctx){
  Navigator.of(ctx.context).pushNamed('grid_page',arguments: null);
}