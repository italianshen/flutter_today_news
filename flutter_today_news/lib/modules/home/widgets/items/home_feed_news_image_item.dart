import 'package:flutter/material.dart';
class HomeFeedNewsImageListItem extends StatefulWidget {
  @override
  _HomeFeedNewsImageListItemState createState() => _HomeFeedNewsImageListItemState();
}

class _HomeFeedNewsImageListItemState extends State<HomeFeedNewsImageListItem> {

  /// 广告的图片
  String pic = "https://resources.ninghao.net/images/childhood-in-a-picture.jpg";
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double picHeight = screenWidth * 9.0/16.0;
    return InkWell(
      onTap: (){
        debugPrint("点击了item");
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(pic,width: screenWidth,height: picHeight,fit: BoxFit.cover,),
                Positioned(
                    right: 10.0,
                    bottom: 10.0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 48.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(69, 70, 71, 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      child: Text("5张图",style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white
                      ),),
                    )
                )
              ],
            ),
            Container(
              color: Colors.white,
              height: 36.0,
              width: screenWidth,
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: Text(
                    "南岸旅游广告的图片新华社媒体报道的时间好好",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0
                    ),
                  )),
                ],
              ),
            ),
            Container(
              height: 30.0,
              color: Colors.white,
              child: _createBottomView(),
            ),
            Container(
              height: 10.0,
              color: Color(0xffdedede),
            )
          ],
        ),
      ),
    );
  }

  /// 构建底部视图
  Widget _createBottomView(){
    return Container(
      padding: EdgeInsets.only(left: 15.0,right: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Text("自然届 0评论",
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

  /// TextStyle:封装
  TextStyle getTextStyle(Color colors,double fontsizes,bool isFontWeight){
    return TextStyle(
      color:colors,
      fontSize: fontsizes,
      fontWeight: isFontWeight == true ? FontWeight.bold : FontWeight.normal ,
    );
  }
}