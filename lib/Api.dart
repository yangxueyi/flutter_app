import 'bean/GridModel.dart';

class Api {
//  factory Api() {
//    return _get();
//  }

  static Api _instance;

//  Api._internal() {
//    //init Api instance
//    Api();
//  }

  static _get() {
    if (_instance == null) {
      _instance = Api();
    }
    return _instance;
  }


  List<GridModel> getGridData() {
    return [
      GridModel(name: "第一块",age: '1'),
      GridModel(name: "第二块",age: '2'),
      GridModel(name: "第三块",age: '3'),
      GridModel(name: "第四块",age: '4'),
      GridModel(name: "第五块",age: '5'),
      GridModel(name: "第六块",age: '6'),
      GridModel(name: "第七块",age: '7'),
      GridModel(name: "第八块",age: '8'),
      GridModel(name: "第九块",age: '9'),
      GridModel(name: "第十块",age: '10'),
    ];
  }
}