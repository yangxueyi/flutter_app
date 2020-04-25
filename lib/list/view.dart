import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {

  print("点击：${state.number}");
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('ListView'),
    ),
    body: ListView.builder(
        itemBuilder: (BuildContext context,int index){

          return _listViewWidget(index, state);
        }
    ),
  );
}

Widget _listViewWidget(int index,ListState state){
  return InkWell(
//    child: Text(),
  );
}
