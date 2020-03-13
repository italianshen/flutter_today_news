import 'package:flutter/material.dart';
class WeitoutiaoToolBarView extends StatelessWidget {

  /// 点赞数
  String likeCount = "41";
  /// 评论数
  String commentCount = "46";
  /// 转发数
  String forwardCount = "46";

  /// toolBarView构造方法
  WeitoutiaoToolBarView(this.likeCount,this.commentCount,this.forwardCount);

  @override
  Widget build(BuildContext context) {
    return _buildBottomToolBar(context);
  }

  Widget _buildBottomToolBar(BuildContext context){
    double screenW = MediaQuery.of(context).size.width;
    return Container(
      height: 36.0,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 36,
            width: screenW/3.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/home/like_old_feed_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                  SizedBox(width: 6.0,),
                  Text(likeCount)
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 36.0,
            width: screenW/3.0,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/home/comment_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0),
                  SizedBox(width: 6.0,),
                  Text(commentCount)
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 36.0,
            width: screenW/3.0,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/home/feed_share_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                  SizedBox(width: 6.0,),
                  Text(forwardCount)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
