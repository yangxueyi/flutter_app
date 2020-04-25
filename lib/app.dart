import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/grid/page.dart';
import 'package:flutterapp/list/page.dart';
import 'package:flutterapp/login/page.dart';

Widget creatApp(){
  final AbstractRoutes routes = PageRoutes(
    pages: <String,Page<Object,dynamic>>{
      'login_page': loginPage(),
      'grid_page':gridPage(),
      'list_page':ListPage()
    },
  );

  return MaterialApp(
    title: 'FishReduxDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: routes.buildPage('login_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}