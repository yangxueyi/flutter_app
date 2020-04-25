import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  //创建adapter
  var myListAdapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: Text('Adapter'),
    ),
    body: ListView.builder(
      itemBuilder: myListAdapter.itemBuilder,
      itemCount: myListAdapter.itemCount
    ),
  );
}
