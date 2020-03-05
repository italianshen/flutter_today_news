import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 72.0,
            height: 20.0,
            child: Image.asset(
              "images/home/title_72x20_@2x.png",
              scale: 1.0,fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15.0,),
          Expanded(
            flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
               width: double.infinity,
               height: 40.0,
               decoration: new BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(8.0))
               ),
               child: new Row(
                 children: <Widget>[
                   Image.asset("images/home/search.png",width: 30.0,height: 30.0,),
                   SizedBox(width: 8.0,),
                    Expanded(child:                    Text("多省市发布开学通知 | 美国今日确诊人数 | 火车票预售期为几天",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0
                      ),))
                 ],
               ), 
          ))
        ],
      ),
    );
  }
}

