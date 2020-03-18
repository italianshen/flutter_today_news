
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ThemeType {
  Day,// 白天
  Night// 夜间
}


class ThemeModel with ChangeNotifier{

  ThemeType type = ThemeType.Night;
  /// 主题颜色
  Color themeColor = Color(0xFFF24048);

  /// 修改状态
  void changeThemeType(ThemeType mType){
    type = mType;
    notifyListeners();
  }

  /// 切换主题
  void reverseThemeType(){
    if(type == ThemeType.Night){
      type = ThemeType.Day;
    }else{
      type = ThemeType.Night;
    }
    notifyListeners();
  }

  // 获取主题颜色
  Color getCurrentThemeColor(){
    return themeColor;
  }

  /// 修改主题颜色
  void changeThemeColor(Color color){
    themeColor = color;
    notifyListeners();
  }

  /// 获取标题
  String getModeTypeText(){
    return "设置主题";
  }


  /// 根据主题 明暗 和 颜色 生成对应的主题
  /// [dark]系统的Dark Mode
  themeData() {
    if(type == ThemeType.Day){
      return ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFF24048),
        accentColor: Colors.orangeAccent
      );
    }else{
      return ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF651413),
          accentColor: Colors.cyan
      );
    }
  }

  /// 颜色 白色背景
  /// loginMobileViewBackgroundColor
  Color tableViewBackgroundColor(){
    if(type == ThemeType.Day){
      return Color(0xfff6f6f6);
    }else{
//      return Color(0xff252525);
      return Color.fromRGBO(42, 42, 45, 1.0);
    }
  }

  /// 标题颜色
  Color blackColor(){
    if(type == ThemeType.Day){
      return Color(0xff000000);
    }else{
      return Color(0xffffffff);
    }
  }

  /// 白色
  Color whiteColor(){
    if(type == ThemeType.Day){
      return  Color(0xffffffff) ;
    }else{
      return Color(0xff707070);
    }
  }

  // 灰色
  Color greyColor(){
    if(type == ThemeType.Day){
      return Color.fromRGBO(241, 242, 245, 1);
    }else{
      return Color(0xff707070);
    }
  }

  /// 频道的背景颜色
  Color channelBGColor(){
    if(type == ThemeType.Day){
      return Color.fromRGBO(244, 245, 246, 1);
    }else{
      return Color(0xff000000).withOpacity(0.4);
    }
  }


  /// 分割线的颜色
  Color dividerColor(){
    if(type == ThemeType.Day){
      return Color(0xfff0f0f0);
    }else{
      return Color(0xff464646);
    }
  }

  /// 底部tabBar的颜色
  /// 分割线的颜色
  Color bottomTabBarColor(){
    if(type == ThemeType.Day){
      return Color(0xffffffff);
    }else{
      return Color.fromRGBO(31, 31, 31, 1);;
    }
  }
}