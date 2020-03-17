import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class WeitoutiaoUserInfoView extends StatelessWidget {

  /// 发布动态的人头像
  String avatar = "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6";
  /// 发布动态的人作者
  String userName = "马未都";
  /// 发布时间
  String createTime = "12-02 18:07";

 /// 构造方法
  WeitoutiaoUserInfoView(this.avatar,this.userName,this.createTime);

  @override
  Widget build(BuildContext context) {
    return _createUserInfoView(context);
  }

  /// 头像信息视图
  Widget _createUserInfoView(BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 15.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image.network(avatar,width: 40.0,height: 40.0,),
          ),
          SizedBox(width: 10.0,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(userName,style: TextStyle(
                      color: model.blackColor(),
                      fontSize: 12.0
                  ),),
                  SizedBox(height: 6.0,),
                  Text(createTime,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0
                  ),),
                ],
              )),
          Icon(Icons.more_horiz,color: model.blackColor(),size: 30.0,)
        ],
      ),
    );
  }
}
