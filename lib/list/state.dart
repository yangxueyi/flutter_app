import 'package:fish_redux/fish_redux.dart';

class ListState implements Cloneable<ListState> {

  int number;

  @override
  ListState clone() {
    return ListState()
    ..number = number
    ;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState()
  ..number = args['number']
  ;
}
