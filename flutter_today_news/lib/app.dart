import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'consts/theme_model.dart';
import 'modules/account/widgets/account_page.dart';
import 'modules/home/widgets/home_page.dart';
import 'modules/video/widgets/video_page.dart';
import 'modules/weitoutiao/widgets/weitoutiao_page.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> with AutomaticKeepAliveClientMixin{

  /// 当前索引号
  var currentIndex = 0;
  /// 首页
  HomePage home;
  /// 视频
  VideoPage video;
  /// 微头条
  WeitoutiaoPage weitoutiao;
  /// 账号
  AccountPage account;

  /// 底部tabBar
  List<BottomNavigationBarItem> tabBarItems(){
    return [
      new BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 0
                ? "images/tabBar/home_tabbar_press_32x32_@2x.png"
                : "images/tabBar/home_tabbar_32x32_@2x.png",
            color: currentIndex == 0
                ? tabSelColor
                : tabNormalColor,
            scale: 1.0,
            width: 32.0,
            height: 32.0,
          ),
          title: new Text('首页',
            style: TextStyle(
                color: currentIndex == 0
                    ? tabSelColor
                    : tabNormalColor
            ),)
      ),
      new BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 1
                ? "images/tabBar/video_tabbar_press_32x32_@2x.png"
                : "images/tabBar/video_tabbar_32x32_@2x.png",
            color: currentIndex == 1
                ? tabSelColor
                : tabNormalColor,
            scale: 1.0,
            width: 32.0,
            height: 32.0,
          ),
          title: new Text('视频',
              style: TextStyle(
                  color: currentIndex == 1
                      ? tabSelColor
                      : tabNormalColor
              ))
      ),
      new BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 2
                ? "images/tabBar/weitoutiao_tabbar_press_32x32_@2x.png"
                : "images/tabBar/weitoutiao_tabbar_32x32_@2x.png",
            color: currentIndex == 2
                ? tabSelColor
                : tabNormalColor,
            width: 32,height: 32,
            scale: 1.0,
          ),
          title: new Text('微头条',
              style: TextStyle(
                  color: currentIndex == 2
                      ? tabSelColor
                      : tabNormalColor
              ))
      ),
      new BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 3
                ? "images/tabBar/no_login_tabbar_press_32x32_@2x.png"
                : "images/tabBar/no_login_tabbar_32x32_@2x.png",
            color: currentIndex == 3
                ? tabSelColor
                : tabNormalColor,
            scale: 1.0,
            width: 32.0,
            height: 32.0,
          ),
          title: new Text('未登录',
              style: TextStyle(
                  color: currentIndex == 3
                      ? tabSelColor
                      : tabNormalColor
              ))
      )
    ];
  }


  /// 当前显示的页面
  Widget currentPage(){
    switch (currentIndex) {
      case 0:
        if (home == null){
          home = HomePage();
        }
        return home;
      case 1:
        if (video == null){
          video = VideoPage();
        }
        return video;
      case 2:
        if (weitoutiao == null){
          weitoutiao = WeitoutiaoPage();
        }
        return weitoutiao;
      case 3:
        if (account == null){
          account = AccountPage();
        }
        return account;
      default:
        return Container();
    }
  }

  /// 页面构造方法
  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: model.bottomTabBarColor(),
        items: tabBarItems(),
        unselectedItemColor: tabNormalColor,
        selectedItemColor: tabSelColor,
        unselectedIconTheme: IconThemeData(color: tabNormalColor),
        selectedIconTheme: IconThemeData(color: tabSelColor),
        currentIndex: currentIndex,
        elevation: 0,
        iconSize: 32.0,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ) ,
      body: currentPage(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
