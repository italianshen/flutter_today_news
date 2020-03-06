import 'package:flutter/material.dart';

class HomeFeedNewsNoImageItem extends StatelessWidget {
  String title = "北京时间3月6日，金州勇士主场迎战多伦多猛龙。此役，勇士核心球员斯蒂芬-库里在缺席了58场比赛之后终于复出。";
  String stickLabel = "置顶";
  String source = "央视新闻";
  String commentCount = "114条评论";
  String time = "4小时以前";
  String whiteSpace = " ";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
      child: Column(
        children: <Widget>[
          Text(title,style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Color(0xff333333)
          ),),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Text(stickLabel,style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.red
              )),
              SizedBox(width: 9.0,),
              Expanded(child: Text(
                  source + whiteSpace + commentCount + whiteSpace + time,
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff999999)
                  )
              )),
              GestureDetector(
                onTap: (){
                  debugPrint("点击了删除按钮");
                },
                child: Image.asset("images/home/add_textpage_17x12_@2x.png",
                  scale: 1.0,fit: BoxFit.cover,
                  width: 17.0,
                  height: 12.0,
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Divider(
            color: Color(0xffdedede),
            height: 1.0,
          )
        ],
      ),
    );
  }
}
