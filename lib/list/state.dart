import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/list/item/state.dart';

class ListState implements Cloneable<ListState> {

  List<ItemState> itemList;//保存item的state


  @override
  ListState clone() {
    return ListState()
    ..itemList = itemList
    ;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
