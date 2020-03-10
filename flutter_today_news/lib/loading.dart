import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoadingPageState();
  }
}

class _LoadingPageState extends State<LoadingPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      print('跳转到应用主页面');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _initScreenUtilSettings(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('images/LaunchImage.png',fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }

  /// 初始化screenUtil
  void _initScreenUtilSettings(BuildContext context){
    //默认 width : 1080px , height:1920px , allowFontScaling:false
    ScreenUtil.init(context);
    //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.init(context, width: 750, height: 1334);
    //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
  }
}