import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/bean/GridModel.dart';

class gridState implements Cloneable<gridState> {

  //存放数据
  List<GridModel> gridModel;
  @override
  gridState clone() {
    return gridState()
    ..gridModel = gridModel;
  }
}

gridState initState(Map<String, dynamic> args) {
  return gridState();
}
