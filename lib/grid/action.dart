import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum gridAction { action ,getGridData,goToListPage}

class gridActionCreator {
  static Action onAction() {
    return const Action(gridAction.action);
  }

  //定义一个获取数据的action
  static Action onGetGridData(){
    return const Action(gridAction.getGridData);
  }

  //定义一个跳转的action
  static Action onGotoList(int number){
    return Action(gridAction.goToListPage,payload: number);
  }
}
