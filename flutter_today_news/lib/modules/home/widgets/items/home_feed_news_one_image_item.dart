import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeFeedNewsOneImageItem extends StatelessWidget {
  String title = "北京时间3月6日，金州勇士主场迎战多伦多猛龙。此役，勇士核心球员斯蒂芬-库里在缺席了58场比赛之后终于复出。";

  String image =
      "http://fdfs.xmcdn.com/group71/M0A/64/40/wKgO2V5BWdnj6dV8AAI81t5f65c279.jpg";
  /// 来源
  String source = "量子位";
  /// 评论数
  String commentCountText = "4评论";
  ///空格
  String whiteSpace = " ";
  /// 时间
  String time = "4小时前";

  /// 构造方法
  HomeFeedNewsOneImageItem(this.title,this.image,this.source,this.commentCountText,this.time);

  @override
  Widget build(BuildContext context) {
    double picWidth = ScreenUtil().setWidth(218);
    double picHeight = picWidth * 130/218;//130/218
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            color: model.tableViewBackgroundColor(),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: picHeight,
            child: Row(
              children: <Widget>[
                Expanded(child: Container(
                  alignment: Alignment.topLeft,
                  color: model.tableViewBackgroundColor(),
                  padding: EdgeInsets.only(right: 10.0),
                  child: Flex(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    direction: Axis.vertical,children: <Widget>[
                    Expanded(child: Text(title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: model.blackColor(),
                          fontWeight: FontWeight.w400
                      ),)),
                    Container(
                      color: model.tableViewBackgroundColor(),
                      height: 25.0,
                      child: _createBottomView(context),
                    )
                  ],),
                )),
                Image.network(image,
                  fit: BoxFit.cover,
                  width: picWidth,
                  height: picHeight,)
              ],
            ),
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

  /// 构建底部视图
  Widget _createBottomView(BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      height: 25.0,
      color: model.tableViewBackgroundColor(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Text(source,style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey
            ),),
          ),
          SizedBox(width: 10.0,),
          Expanded(child: Text(commentCountText + whiteSpace + time,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0
            ),)),
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
    );
  }
}
