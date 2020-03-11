import 'package:flutter/material.dart';

class MineItemWidget extends StatelessWidget{
  String imageName;
  String title;

  @required VoidCallback onTap;

    MineItemWidget(this.imageName,this.title,{this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 53.0,
            child: _mineItem(this.imageName, this.title),
          ),
          Container(
            color: Color(0xffeaeaea),
            constraints: BoxConstraints.expand(height: 1.0),
          )
        ],
      ),
    );
  }

  Widget _mineItem(String imageName,String title){
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
                child: Image.asset(imageName,width: 30,height: 30,),
              )
          ),
          Expanded(
            flex: 6,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    title,
                    style: TextStyle(fontSize: 16.0),
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
