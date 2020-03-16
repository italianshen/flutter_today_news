import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_list_entity.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitou_retwittered_item.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_article_item.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_origin_thread_item.dart';

class WeitoutiaoPage extends StatefulWidget {
  @override
  _WeitoutiaoPageState createState() => _WeitoutiaoPageState();
}

class _WeitoutiaoPageState extends State<WeitoutiaoPage> {
  /// 數據源
  List<WeitoutiaoListEntity> dataSource = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("微头条"),
        ),
        body: _createContentView(context)
    );
  }

  Widget _createContentView(BuildContext context){
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('config/weitoutiao_data.json'),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            String memberListJson = snapshot.data;
            Map map = json.decode(memberListJson);
            Map data = map["data"];
            List<dynamic> list = data["data"];
            dataSource = list.map((temp) => WeitoutiaoListEntity.fromJson(temp)).toList();
            print("🐸dataSource:${dataSource.length}");
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: _createListViewItem,
              itemCount: dataSource.length,
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }


  Widget _createListViewItem(BuildContext context,int index){
    WeitoutiaoListEntity model = dataSource[index];
    if(model.isRepost == 1){
      return _createRetweetedViewItem(model);
    }else{
      if(model.articleItem == null){
        return _createOriginalViewItem(model);
      }else{
        return _createArticleItem(model);
      }
    }
  }

  /// 创建原创微博
  Widget _createOriginalViewItem(WeitoutiaoListEntity model){
    /// 原创内容
    String orginalContent = model.content;
    /// 原创微头条的作者
    String screenName = model.user.screenName;
    /// 发布动态的人头像
    String avatar = model.user.avatarUrl;
    /// 发布动态的人作者
    String userName = model.user.screenName;
    /// 发布时间
    String createTime = model.createTime.toString();
    /// 图片
    List<String> images = model.ugcCutImageList.map((temp)=> temp.url).toList();
    /// 多少人阅读
    String readText = "875 阅读";
    /// 点赞数
    String likeCount = "41万";
    /// 评论数
    String commentCount = "46";
    /// 转发数
    String forwardCount = "46";
    /// 位置信息
    String location = "北京市 朝阳区";
    return WeitoutiaoOriginItem(orginalContent, screenName, avatar, userName, createTime, images, readText, likeCount, commentCount, forwardCount, location);
  }

  /// 创建转发微头条
  Widget _createRetweetedViewItem(WeitoutiaoListEntity model){
    /// 转发内容
    String retwitterContent = model.content;
    /// 原创内容
    String orginalContent = model.originThread.content;
    /// 原创微头条的作者
    String screenName = model.user.screenName;
    /// 发布动态的人头像
    String avatar = model.user.avatarUrl;
    /// 发布动态的人作者
    String userName = model.user.screenName;
    /// 发布时间
    String createTime = model.createTime.toString();
    List<String> images = model.originThread.ugcCutImageList.map((temp)=> temp.url).toList();
    /// 多少人阅读
    String readText = model.readCount.toString() + " 阅读";
    /// 点赞数
    String likeText = model.diggCount.toString();
    /// 评论数
    String commentText = model.commentCount.toString();
    /// 转发数
    String forwardText = model.forwardCount.toString();
    return WeitoutiaoRetwitteredItem(retwitterContent, orginalContent, screenName, avatar, userName, createTime, images, readText, likeText, commentText, forwardText);
  }


  /// 创建发布的文章
  Widget _createArticleItem(WeitoutiaoListEntity model){
    /// 原创内容
    String orginalContent = model.content;
    /// 发布动态的人头像
    String avatar = model.user.avatarUrl;
    /// 发布动态的人作者
    String userName = model.user.screenName;
    /// 发布时间
    String createTime = model.createTime.toString();
    /// 文章标题
    String articleTitle = model.articleItem.title;
    /// 多少人阅读
    String readText = model.readCount.toString() + " 阅读";
    /// 点赞数
    String likeText = model.diggCount.toString() + "赞";
    /// 评论数
    String commentText = model.commentCount.toString() + "评论";
    /// 位置信息  readText +  likeText +  commentText
    String location = "";
    /// 发布的类型 media_type 1 图文 media_type 2 视频
    int mediaType = model.articleItem.mediaType;
    return
      WeitoutiaoAricleItem(
          orginalContent,
          avatar,
          userName,
          createTime,
          articleTitle,
          readText, likeText, commentText, "",mediaType);
  }

  /// 随机颜色
  Color getRandomColor() {
    return Color.fromARGB(
        255,
        Random.secure().nextInt(255),
        Random.secure().nextInt(255),
        Random.secure().nextInt(255));
  }



}
