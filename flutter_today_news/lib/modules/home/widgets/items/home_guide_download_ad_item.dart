import 'package:flutter/material.dart';
/// 广告首页2
class HomeGuideDownloadFeedItem extends StatelessWidget {
  /// 标题
  String title = "1.1个G，iPhone才能感受到的3D端游级画质手游";
  /// 广告的图片
  String pic = "https://resources.ninghao.net/images/childhood-in-a-picture.jpg";
  /// 广告栏
  String adText = "网易光明大陆iOS 4小时前";
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double picWidth = screenWidth - 2.0 * margin;
    double picHeight = picWidth * 5/7;
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
            height: picHeight,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: picWidth,
                  height: picHeight - 55.0,
                  child: Stack(
                    children: <Widget>[
                      Image.network(pic,width: picWidth,height: picHeight - 55.0,fit: BoxFit.cover,),
                      Positioned(
                        child: Container(
                          height: 30.0,
                          width: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 36, 36, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                          child: Text("01:29",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0
                            ),),
                        ),
                        bottom: 15.0,
                        right: 15.0,
                      ),
                      Positioned(
                        child: Container(
                          height: 44.0,
                          width: 44.0,
                          alignment: Alignment.center,
                          child: Image.asset("images/play_icon.png",width: 44.0,height: 44.0,),
                        ),
                        bottom: (picHeight - 55.0)*0.5 - 22.0,
                        right: picWidth * 0.5 - 22.0,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 55.0,
                  width: double.infinity,
                  color: Color.fromRGBO(241, 242, 245, 1),
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Flex(direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(child: Text("好莱坞级视听盛宴",style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                      ),)),
                      Container(
                        alignment: Alignment.center,
                        width: 80.0,
                        height: 30.0,
                        child: Text("点击下载",style: TextStyle(
                            fontSize: 16.0,
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
                    ],),
                )
              ],
            ),
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