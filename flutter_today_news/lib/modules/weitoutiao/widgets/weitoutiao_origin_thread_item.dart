import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_toolbar_view.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_userinfo_view.dart';

class WeitoutiaoOriginItem extends StatelessWidget {

  /// 原创内容
  String orginalContent = "早上来上海观复博物馆时，工作人员正在做开馆前的准备，随手拍了几张无人时的照片。在上海中心大厦37层上，又一次印证了我的办馆理念：没来时不能想象，来了也不能复述。";
  /// 原创微头条的作者
  String screen_name = "马未都";
  /// 发布动态的人头像
  String avatar = "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6";
  /// 发布动态的人作者
  String userName = "马未都";
  /// 发布时间
  String createTime = "12-02 18:07";
  /// images
  List<String> images = [
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6"
  ];
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
  /// 原创微头条
  WeitoutiaoOriginItem(
      this.orginalContent,
      this.screen_name,
      this.avatar,
      this.userName,
      this.createTime,
      this.images,
      this.readText,
      this.likeCount,
      this.commentCount,
      this.forwardCount,
      this.location
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
          _listViewLine(1.0),
          WeitoutiaoToolBarView(likeCount, commentCount, forwardCount),
          _listViewLine(10.0),
        ],
      ),
    );
  }

  /// 转发的内容部分
  Widget _buildRetwitterContentView(){
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
      child: Text(
        orginalContent,
        style: TextStyle(
            color: Colors.black,
            fontSize: 16.0
        ),
      ),
    );
  }

  /// 原创内容
  Widget _buildOrignThreadContentView(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0,top: 0.0),
      child: Column(
        children: <Widget>[
          Text(screen_name + orginalContent,style: TextStyle(
              fontSize: 16.0,
              color: Colors.black
          ),),
//          SizedBox(height: 15.0,),
          _buildGirdViewImageContent(context)
        ],
      ),
    );
  }

  Widget _buildGirdViewImageContent(BuildContext context){
    // 如果是一张图 crossAxisCount：1
    // 如果是2张图 crossAxisCount：2
    // 如果是3张图 crossAxisCount：3
    // 如果是4张图 crossAxisCount：3
    int crossCount = images.length >= 3 ? 3 : 2;
    return images.length == 0 ? Container(
      color: Colors.orange,
      height: 0.0,
    ) : Container(
        margin: EdgeInsets.only(top: 15.0),
        child: GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossCount,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.0
            ),
            itemBuilder: (BuildContext context,int index){
              return Image.network(images[index],fit: BoxFit.cover,);
            })
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
    Text(readText,style: TextStyle(
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
        Text(readText,style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey
        ),)
      ],
    );
  }


  /// 分割线
  Widget _listViewLine(double height) {
    return Container(
      color: Color(0xffeaeaea),
      height: height,
    );
  }
}
