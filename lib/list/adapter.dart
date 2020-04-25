import 'package:fish_redux/fish_redux.dart';
import 'package:flutterapp/list/item/component.dart';
import 'package:flutterapp/list/item/state.dart';

import 'reducer.dart';
import 'state.dart';

// ignore: deprecated_member_use
class ListAdapter extends DynamicFlowAdapter<ListState> {
  ListAdapter()
      : super(
          pool: <String, Component<Object>>{
            "MyItem": ItemComponent(), //引用组件
          },
          connector: _ListConnector(),
          reducer: buildReducer(),
        );
}

class _ListConnector extends ConnOp<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    //判断ListState里面的items数据是否为空
    if (state.itemList?.isNotEmpty == true) {
      //不为空转化为itembean的列表
      return state.itemList
          .map<ItemBean>((ItemState data) => ItemBean("MyItem", data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ListState state, List<ItemBean> items) {
    //把ItemBean的变化，修改到item的state的过程
    if (state.itemList?.isNotEmpty == true) {
      state.itemList = List<ItemState>.from(
          items.map<ItemState>((ItemBean bean) => bean.data).toList());
    } else {
      state.itemList = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
