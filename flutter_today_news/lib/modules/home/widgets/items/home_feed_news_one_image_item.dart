import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double picWidth = (screenWidth  - 30.0) * 0.4;
    double picHeight = picWidth * 150/224;//150/224
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: picHeight,
            child: Row(
              children: <Widget>[
                Expanded(child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400
                    ),),
                )),
                Image.network(image,
                  fit: BoxFit.cover,
                  width: picWidth,
                  height: picHeight,)
              ],
            ),
          ),
          _createBottomView(),
        ],
      ),
    );
  }

  /// 构建底部视图
  Widget _createBottomView(){
    return Container(
      padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
