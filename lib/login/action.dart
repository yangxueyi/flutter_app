import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum loginAction { action ,goToGrid}

class loginActionCreator {
  static Action onAction() {
    return const Action(loginAction.action);
  }
  //定义自己的action
  static Action onGoToGrid(){
    return const Action(loginAction.goToGrid);
  }
}
