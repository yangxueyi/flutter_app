import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  //定义item需要的字段
  String name;

  ItemState({this.name});

  @override
  ItemState clone() {
    return ItemState()
      ..name = name;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
