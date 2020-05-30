import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(loginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('入口页面'),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                color: Colors.green,
                child: Text(
                  "进入",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // dispatch定义的action
                  dispatch(loginActionCreator.onGoToGrid());
                }),
          ),
          Center(
            child: RaisedButton(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                color: Colors.green,
                child: Text(
                  "调用原生",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  gotoOne();

                }),
          ),
          Center(
            child: RaisedButton(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                color: Colors.green,
                child: Text(
                  "给原生传参",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  gotoTwo();

                }),
          ),

          Center(
            child: RaisedButton(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                color: Colors.green,
                child: Text(
                  "接收原生传参",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  receive();

                }),
          )

        ],
      ),
    ),
  );
}


Future<void> gotoOne() async {
  //获取到插件与原生的交互通道
   const jumpPlugin = const MethodChannel("com.yxy/xyPlugin");
   String result = await jumpPlugin.invokeMethod("1");
   print('result===$result');

}


Future<void> gotoTwo() async {
  //获取到插件与原生的交互通道
  const jumpPlugin = const MethodChannel("com.yxy/xyPlugin");
  Map<String, String> map = { "url": "flutter" };
  String result = await jumpPlugin.invokeMethod("2",map);
  print('result===$result');

}


Future<void> receive() async {
   const counterPlugin = const EventChannel("com.yxy/xyPlugin2");
   counterPlugin.receiveBroadcastStream().listen(_onEvent,onError: _onError);


}

void _onEvent(Object event) {

  print("ChannelPage: $event");
}

void _onError(Object error) {
  print(error);
}