import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'channel_listview_item.dart';

class ChannelManagementPage extends StatelessWidget {
  /// 频道
  List<String> titles = [
    "推荐","关注","推荐","热点",
    "视频","深圳","问答","娱乐",
    "图片","科技","懂车帝","体育",
    "直播","财经","军事","国际",
    "健康","正能量","幸福里",
    "新时代","NBA"];

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.greyColor(),
      padding: EdgeInsets.only(bottom: 10.0),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context,int index){
            if (index.isOdd){// 基数
              int idx = index ~/ 2;
              return _createListViewItem(context, idx);
            }else{
              int idx = index ~/ 2;
              return _createSectionHeader(idx,context);
            }
          }),
    );
  }

  /// 创建列表
  Widget _createListViewItem(BuildContext context,int index){
    List<String> titles = this.titles;
    return ChannelDidsplayView(titles);
  }

  /// 分组标题
  Widget _createSectionHeader(int index,BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return  Container(
      height: 30.0,
      padding: EdgeInsets.only(left: 15.0,top: 6.0,bottom: 6.0),
      alignment: Alignment.centerLeft,
      color: model.greyColor(),
      child: Row(
        children: <Widget>[
          Text("我的频道",style: TextStyle(
              color: model.blackColor(),
              fontSize: 14.0
          ),)
        ],
      ),
    );
  }
}
