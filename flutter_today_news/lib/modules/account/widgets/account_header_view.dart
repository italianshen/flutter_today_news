import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class AccountHeaderView extends StatefulWidget {
  @override
  _AccountHeaderViewState createState() => _AccountHeaderViewState();
}

class _AccountHeaderViewState extends State<AccountHeaderView> {
  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    double headerH = topPadding == 44.0 ? 210 : 190;
    double bottomViewH = 70;
    double screenW = MediaQuery.of(context).size.width;
    double headerViewH = topPadding == 44.0 ? 280 : 260.0;
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      height: headerViewH,
      child: Column(
        children: <Widget>[
          Container(
            width: screenW,
            height:headerH,
            color: model.tableViewBackgroundColor(),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "images/mine/wallpaper_profile@2x.jpg",
                  fit: BoxFit.fill,
                  width: screenW,
                  height: headerH,
                ),
                Positioned(child: Container(
                  width: screenW,
                  height: 66,
//                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        iconSize: 66,
                          icon: Image.asset("images/mine/cellphoneicon_login_profile_66x66_@2x.png"), onPressed: (){

                      }),
                      IconButton(
                        iconSize: 66,
                          icon: Image.asset("images/mine/weixinicon_login_profile_66x66_@2x.png"), onPressed: (){

                      }),
                      IconButton(
                          iconSize: 66,
                          icon: Image.asset("images/mine/qqicon_login_profile_66x66_@2x.png"), onPressed: (){

                      }),
                      IconButton(
                        iconSize: 66,
                          icon: Image.asset("images/mine/sinaicon_login_profile_66x66_@2x.png"), onPressed: (){

                      }),
                    ],
                  ),
                ),
                  left: 0.0,
                  bottom: 62.0,
                ),
                Positioned(
                    child: InkWell(
                      onTap: (){
                        debugPrint("点击更多登录方式");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(14.0))
                        ),
                        width: 125,
                        height: 28.0,
                        child: Text("更多登录方式 >",style: TextStyle(
                            color: Colors.white
                        ),),),
                    ),
                  bottom: 14.0,
                  left: (screenW - 125) * 0.5,
                )
              ],
            ),
          ),

          Container(
            height: bottomViewH,
            color:  model.tableViewBackgroundColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: model.tableViewBackgroundColor(),
                  height: bottomViewH,
                  width: screenW/3.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("images/mine/favoriteicon_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("收藏",style: TextStyle(
                          color: model.blackColor()
                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  color: model.tableViewBackgroundColor(),
                  height: bottomViewH,
                  width: screenW/3.0,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("images/mine/history_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("历史",style: TextStyle(
                            color: model.blackColor()
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  color: model.tableViewBackgroundColor(),
                  height: bottomViewH,
                  width: screenW/3.0,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0),
                  child: InkWell(
                    onTap: (){
                      model.reverseThemeType();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("images/mine/nighticon_profile_24x24_@2x.png",scale: 1.0,width: 24.0,height: 24.0,),
                        SizedBox(height: 3.0,),
                        Text("夜间",style: TextStyle(
                        color: model.blackColor()
                        )),
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
