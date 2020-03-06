import 'package:flutter/material.dart';
/// 屏幕适配插件 flutter_screenutil https://www.jianshu.com/p/3f6770f823dd
/// 广告首页1
class HomeAdFeedItem extends StatelessWidget {
  /// 标题
  String title = "HUAWEI nova 2 系列立即购买";
  /// 广告的图片
  String pic = "https://resources.ninghao.net/images/childhood-in-a-picture.jpg";
  /// 广告栏
  String adText = "华为手机 1评论 55分钟前";
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double picWidth = screenWidth - 2.0 * margin;
    double picHeight = picWidth * 9/16;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            height: 40.0,
            color: Colors.white,
            child: Text(title,style: TextStyle(
                fontSize: 16.0,
                color: Color(0xff333333),
                fontWeight: FontWeight.w700
            ),),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Image.network(pic,width: picWidth,height: picHeight,fit: BoxFit.cover,),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            height: 40.0,
            color: Colors.white,
            child: _createBottomView(),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
            indent: 15.0,
          )

        ],
      ),
    );
  }

  /// 构建底部视图
  Widget _createBottomView(){
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 35.0,
            height: 20.0,
            child: Text("广告",style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue
            ),),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(
                width: 0.5,
                color: Colors.blue
              )
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(child: Text(adText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0
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

