import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';


class MyAttensionView extends StatelessWidget {

  List<String> imageList = [
    "http://p1.pstatp.com/thumb/ffbb000022d59010fb8b",
    "http://p3.pstatp.com/thumb/39fc0000eb54af86e14f",
    "http://sf1-ttcdn-tos.pstatp.com/img/pgc-image/e960504c4ea044aeba1c0931a0c7761c~120x256.image",
    "http://sf1-ttcdn-tos.pstatp.com/img/mosaic-legacy/4d000b96aaf5bc09e8~120x256.image",
    "http://p1.pstatp.com/thumb/13540016ae888cff0e52",
    "http://p1.pstatp.com/thumb/1754900000535df0c46d5",
    "http://p1.pstatp.com/thumb/6eed0002f94991777db3",
    "http://p9.pstatp.com/thumb/5ac5000a0121e2566af4",
    "http://sf1-ttcdn-tos.pstatp.com/img/mosaic-legacy/46f60005489eaee12d77~120x256.image",
    "http://p3.pstatp.com/thumb/ff8600003524aa645671"
  ];

  List<String> titleList = [
    "北京大学",
    "阿里技术",
    "海豚真实事件",
    "江夏融媒",
    "闪电新闻",
    "SNH48-许佳琪",
    "河北广播电视台",
    "蔡珍妮",
    "Quinn小夜",
    "卢洋洋_Hanna"
  ];

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 15.0),
              child: Text("我的关注"),
            ),
            Expanded(child: Container(
              width: double.infinity,
              height: double.infinity,
              color: model.tableViewBackgroundColor(),
              child: ListView.builder(
                itemCount: imageList.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: _buildItemView),
            ))
          ],
        ),
    );
  }

  /// 构建item
  Widget _buildItemView(BuildContext context,int index){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      padding: EdgeInsets.only(left: 15,right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
            child: Image.network(imageList[index],width: 36.0,height: 36.0,),
          ),
          Text(titleList[index],style: TextStyle(
            color: model.blackColor()
          ),)
        ],
      ),
    );

  }


}
