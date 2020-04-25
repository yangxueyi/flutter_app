import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(gridState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    appBar: AppBar(
      title: Text('grid'),
    ),
    body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context,int index){
            print(state.gridModel[index].name);
            return _listWidget(index,state,dispatch);
          },
          itemCount: state.gridModel.length ,
        )
    ),
  );
}

Widget _listWidget(int index,gridState state,Dispatch dispatch){
  return InkWell(
    onTap: (){
      dispatch(gridActionCreator.onGotoList(index));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(state.gridModel[index].name),
        Text(state.gridModel[index].age)
      ],
    ),
  );
}