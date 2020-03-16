import 'package:flutter/material.dart';
/// 广告首页2
class HomeAdThreeImagesFeedItem extends StatelessWidget {
  /// 标题
  String title = "奥迪A6答复降价，不了解怎么行，这个App公布了";
  /// 广告的图片
  String pic = "https://resources.ninghao.net/images/childhood-in-a-picture.jpg";

  /// 图片列表
  final List<String> images =
  [
    "http://fdfs.xmcdn.com/group71/M0A/64/40/wKgO2V5BWdnj6dV8AAI81t5f65c279.jpg",
    "http://fdfs.xmcdn.com/group71/M02/3D/32/wKgO2V4mk6TB_v8oAAHib82saSM098.jpg",
    "http://fdfs.xmcdn.com/group55/M0B/24/C0/wKgLdVxr18TyJ2nlAAIJVSk2i_o322.jpg"
  ];
  /// 广告栏
  String adText = "国士无双 38分钟前";
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double itemMargin = 5.0;
    // 4/3图片
    double picHeight = (screenWidth - 2.0 * margin - 2.0 * itemMargin)/3.0 * 3.0/4.0;

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
            height: picHeight + 55.0,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: picHeight,
                  child: _layoutCenterPhotoView(),
                ),
                Container(
                  height: 55.0,
                  width: double.infinity,
                  color: Color.fromRGBO(241, 242, 245, 1),
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Flex(direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(child: Text("国士无双 38分钟前",style: TextStyle(
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
            color: Color(0xffdedede),
            indent: 15.0,
          )

        ],
      ),
    );
  }

  /// 布局中间的gridview
  Widget _layoutCenterPhotoView(){
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,childAspectRatio: 4/3,
            crossAxisSpacing: 5.0
        ),
        itemBuilder: (BuildContext context,int index){
          return Image.network("http://fdfs.xmcdn.com/group55/M0B/24/C0/wKgLdVxr18TyJ2nlAAIJVSk2i_o322.jpg",
            fit: BoxFit.cover,
          );
        });
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