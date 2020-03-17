import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeFeedNewsNoImageItem extends StatelessWidget {
  String title = "北京时间3月6日，金州勇士主场迎战多伦多猛龙。此役，勇士核心球员斯蒂芬-库里在缺席了58场比赛之后终于复出。";
  String stickLabel = "置顶";
  String source = "央视新闻";
  String commentCount = "114条评论";
  String time = "4小时以前";
  String whiteSpace = " ";

  HomeFeedNewsNoImageItem(this.title,this.stickLabel,this.source,this.commentCount,this.time);

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: model.blackColor()
          ),),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Text(stickLabel,style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.red
              )),
              SizedBox(width: stickLabel.length == 0 ? 0.0 : 9.0,),
              Expanded(child: Text(
                  source + whiteSpace + commentCount + whiteSpace + time,
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
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
            color: model.dividerColor(),
            height: 1.0,
          )
        ],
      ),
    );
  }
}
