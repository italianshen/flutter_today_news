import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountHeaderView extends StatefulWidget {
  @override
  _AccountHeaderViewState createState() => _AccountHeaderViewState();
}

class _AccountHeaderViewState extends State<AccountHeaderView> {
  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    double headerH = ScreenUtil().setWidth(topPadding == 44.0 ? 280 : 190.0);
    double bottomViewH = ScreenUtil().setWidth(100);
    double screenH = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: headerH,
            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "images/mine/wallpaper_profile@2x.jpg",
                  fit: BoxFit.fill,
                  width: screenH,
                  height: headerH,
                )
              ],
            ),
          ),
          Container(
            height: bottomViewH,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: bottomViewH,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/mine/favoriteicon_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("收藏")
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: bottomViewH,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/mine/history_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("历史")
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: bottomViewH,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/mine/nighticon_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("夜间")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
