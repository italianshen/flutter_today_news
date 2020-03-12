import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_entity.dart';
import 'dart:convert';

class WeitoutiaoPage extends StatefulWidget {
  @override
  _WeitoutiaoPageState createState() => _WeitoutiaoPageState();
}

class _WeitoutiaoPageState extends State<WeitoutiaoPage> {
  /// 數據源
  List<WeitoutiaoEntity> dataSource = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("微头条"),
          leading: Icon(Icons.mail),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: _createContentView(context)
    );
  }

  Widget _createContentView(BuildContext context){
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('config/weitoutiao_data.json'),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            String memberListJson = snapshot.data;
            Map map = json.decode(memberListJson);
            Map data = map["data"];
            List<dynamic> list = data["data"];
            dataSource = list.map((temp) => WeitoutiaoEntity.fromJson(temp)).toList();
            print("🐸dataSource:${dataSource.length}");
            return ListView.builder(
              itemBuilder: _createListViewItem,
              itemExtent: 120.0,
              itemCount: dataSource.length,
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }


  Widget _createListViewItem(BuildContext context,int index){
    WeitoutiaoEntity model = dataSource[index];
    return
      Container(
        padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
        color: Colors.orange,
        child: Text(model.contentUnescape),
      );
  }


}
