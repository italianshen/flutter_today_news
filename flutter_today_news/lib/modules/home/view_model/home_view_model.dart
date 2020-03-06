import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/home/api/HomeApi.dart';
import 'package:flutter_today_news/modules/home/model/home_nav_entity.dart';
class HomeViewModel {

  /// 初始化方法
  HomeApi _homeApi;
  /// 初始化方法
  void prepareNetWorkTool(){
    _homeApi = HomeApi();
  }

  /// 1.请求首页导航栏标题
  void requestNavCategoryApiData(Function successHandler, Function failure){
    _homeApi.requestNavCategoryData((response){
      Map responseJson = new Map<String, dynamic>.from(response);
      /// 解析数据
      HomeNavEntity entity = HomeNavEntity.fromJson(responseJson);
      successHandler(entity.data.data);
    }, failure);
  }

  /// 1.首页广告 item高度
  double homeAdItemViewHeight(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double picWidth = screenWidth - 2.0 * margin;
    double picHeight = picWidth * 9/16;
    double titleBoxH = 40.0;
    double bottomBoxH = titleBoxH;
    double lineH = 1.0;
    return picHeight + titleBoxH + bottomBoxH + lineH;
  }

  /// 2.首页引导下载类型广告 item高度
  double homeGuideDownloadAdItemViewHeight(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double picWidth = screenWidth - 2.0 * margin;
    double picHeight = picWidth * 5/7;
    double titleBoxH = 40.0;
    double bottomBoxH = titleBoxH;
    double lineH = 1.0;
    return picHeight + titleBoxH + bottomBoxH + lineH;
  }

  ///3.首页广告3张图片的高度
  double homeAdThreeImagesItemViewHeight(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double picWidth = (screenWidth - 2.0 * margin - 5.0 * 2.0)/3 ;
    double picHeight = picWidth * 3/4 + 55.0;
    double titleBoxH = 40.0;
    double bottomBoxH = titleBoxH;
    double lineH = 1.0;
    return picHeight + titleBoxH + bottomBoxH + lineH;
  }
}

