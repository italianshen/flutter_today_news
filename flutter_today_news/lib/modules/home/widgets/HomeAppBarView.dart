import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeAppBar extends StatelessWidget {
  
  List<String> newsTitles = [
    "多省市发布开学通知 | 美国今日确诊人数 | 火车票预售期为几天",
    "湖北开学通知 | 美国今日确诊人数 | 火车票预售期为几天"
  ];
  @override
  Widget build(BuildContext context) {
    double appLogoWidth = 72.0;
    double appLogoHeight = 20.0;
    double appLogoLeftMargin = 15.0;
    double appLogoRightMargin = 15.0;
    double searchBgRightMargin = 15.0;
    double searchBgBoxWidth = MediaQuery.of(context).size.width - appLogoLeftMargin - appLogoWidth - appLogoRightMargin - searchBgRightMargin;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: appLogoWidth,
            height: appLogoHeight,
            child: Image.asset(
              "images/home/title_72x20_@2x.png",
              scale: 1.0,fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: appLogoRightMargin,),
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
                   Image.asset("images/home/search.png",width: 20.0,height: 20.0,),
                   SizedBox(width: 8.0,),
                   Container(
                     color: Colors.white,
                     alignment: Alignment.center,
                     width: searchBgBoxWidth - 60.0,
                     height: 40.0,
                     child: _createLoopView1(context),
                   ) 
                 ],
               ), 
          ))
        ],
      ),
    );
  }

  
  Widget _createLoopView1(BuildContext context){
    double appLogoWidth = 72.0;
    double appLogoLeftMargin = 15.0;
    double appLogoRightMargin = 15.0;
    double searchBgRightMargin = 15.0;
    double searchBgBoxWidth = MediaQuery.of(context).size.width - appLogoLeftMargin - appLogoWidth - appLogoRightMargin - searchBgRightMargin;
    return Container(
        width: searchBgBoxWidth - 60,
        height: 40.0,
        color: Colors.white,
        alignment: Alignment.center,
        child: Swiper(
          itemHeight: 30.0,
          autoplay: true,
          outer: false,
          scrollDirection: Axis.vertical,
          itemBuilder: (c, i) {
            if(newsTitles!=null){
              return Container(
                alignment: Alignment.center,
                child: Text(newsTitles[i],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0
                      ),)
              );
            }else{
              return Text("多省市发布开学通知 | 美国今日确诊人数 | 火车票预售期为几天",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0
                      ),);
            }
          },
          itemCount: newsTitles == null ? 0 : newsTitles.length,
        ),
    );
  }
}

