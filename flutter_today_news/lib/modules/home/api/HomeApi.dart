import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_today_news/utils/net_util.dart';
import 'package:flutter_today_news/utils/net_url.dart';
class HomeApi {

  final Dio _dio = new Dio();
  /// MARK: - 获取首页nav分类标题数据
  void requestNavCategoryData(Function success, Function failure){
    String path = NetUrl.HOME_NAV_TITLE_URL;
    Map<String,dynamic> params = homeNavCategoryParams();
    debugPrint("请求的地址:$path");
    debugPrint("请求的参数:$params");
    NetUtil.getHomeNavCategoryData(path, params,success: (responseJson){
      success(responseJson);
    },failure: (error){
      failure(error);
    });
  }

  /// MARK: -  首页nav分类标题的参数
  Map<String,dynamic> homeNavCategoryParams(){
    var map = new Map<String,dynamic>();
    map["device_id"] = 8800803363;
    map["iid"] = 14486549076;
    map["aid"] = 13;
    return map;
  }

}