import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class MineItemWidget extends StatelessWidget{
  String imageName;
  String title;

  @required VoidCallback onTap;

    MineItemWidget(this.imageName,this.title,{this.onTap});

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: model.tableViewBackgroundColor(),
            height: 53.0,
            child: _mineItem(this.imageName, this.title,context),
          ),
          Container(
            color: Color(0xffeaeaea),
            constraints: BoxConstraints.expand(height: 1.0),
          )
        ],
      ),
    );
  }

  Widget _mineItem(String imageName,String title,BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return InkWell(
      onTap: (){
        this.onTap();
      },
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Image.network(imageName,width: 24,height: 24,
                color: model.blackColor(),
                )
              )
          ),
          Expanded(
            flex: 6,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    title,
                    style: TextStyle(fontSize: 16.0,color: model.blackColor()),
                ),
              )
          ),
          Expanded(
            flex: 1,
              child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
