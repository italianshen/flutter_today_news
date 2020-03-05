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
}