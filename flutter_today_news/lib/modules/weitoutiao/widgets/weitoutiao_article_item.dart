import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_userinfo_view.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class WeitoutiaoAricleItem extends StatelessWidget {

  /// 原创内容
  String orginalContent = "发布了文章";
  /// 发布动态的人头像
  String avatar = "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6";
  /// 发布动态的人作者
  String userName = "马未都";
  /// 发布时间
  String createTime = "12-02 18:07";
  /// 文章标题
  String articleTitle = "马未都:机器人要逆天,人类怎么办?";
  /// 多少人阅读
  String readText = "8.6万 播放";
  /// 点赞数
  String likeText = "2243赞";
  /// 评论数
  String commentText = "646评论";
  /// 位置信息  readText +  likeText +  commentText
  String location = "";
  /// 发布的类型 media_type 1 图文 media_type 2 视频
  int mediaType = 1;

  /// 文章类型item
  WeitoutiaoAricleItem(
      this.orginalContent,
      this.avatar,
      this.userName,
      this.createTime,
      this.articleTitle,
      this.readText,
      this.likeText,
      this.commentText,
      this.location,
      this.mediaType
      );

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// 头像信息部分
          WeitoutiaoUserInfoView(avatar, userName, createTime),
          /// 原创部分内容
          _buildOrignThreadContentView(context),
          /// 多少人阅读
          _buildReadCountView(),
          _listViewLine(10.0, context),
        ],
      ),
    );
  }

  /// 原创内容
  Widget _buildOrignThreadContentView(BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0,top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(orginalContent,style: TextStyle(
              fontSize: 16.0,
              color: model.blackColor()
          ),),
          SizedBox(height: 15.0,),
          _createArticleItemView(context)
        ],
      ),
    );
  }


  /// 创建原创文章部分内容
  Widget _createArticleItemView(BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    //Color.fromRGBO(241, 242, 245, 1),
    return Container(
      color: model.greyColor(),
      height: 90.0,
      child: Row(
        children: <Widget>[
          Container(
            width: 90.0,
            height: 90.0,
            child: Stack(
              children: <Widget>[
                Image.network(avatar,width: 90.0,height: 90.0,fit: BoxFit.cover,),
                mediaType == 2 ? Positioned(
                    left: (90.0 - 30.0) * 0.5,
                    top: (90.0 - 30.0) * 0.5,
                    child: Image.asset(
                      "images/play_icon.png",
                      fit: BoxFit.cover,
                      width: 30.0,height: 30.0,
                    )
                ) : Container()
              ],
            ),
          ),
          Expanded(child: Container(
//            color: Colors.grey,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Text(articleTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
              fontSize: 16.0,
              color: model.blackColor()
            ),),
          )),
        ],
      ),
    );

  }


  /// 多少人已阅读
  Widget _buildReadCountView(){
    return Container(
      padding: EdgeInsets.only(left: 15.0,top: 0.0,bottom: 10.0),
      child: location.length == 0 ? _readCountInfoView() : contentForLocationAndReadCountView(),
    );
  }

  /// 定位视图
  Widget contentForLocationAndReadCountView(){
    return Row(
        children: <Widget>[
          SizedBox(width: 10.0,),
          Icon(Icons.location_on,size: 20.0,color: Colors.grey,),
          Text(location,style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey
          )),
          SizedBox(width: 10.0,),
          Text(readText +  likeText +  commentText,style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey
          ),)]
      // ignore: expected_token
    );
  }

  /// 阅读信息
  Widget _readCountInfoView(){
    return Row(
      children: <Widget>[
        Text(readText +  likeText +  commentText,style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey
        ),)
      ],
    );
  }

  /// 分割线
  Widget _listViewLine(double height,BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.dividerColor(),
      height: height,
    );
  }
}
