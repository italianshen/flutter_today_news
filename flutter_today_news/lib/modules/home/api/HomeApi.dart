
import 'package:flutter/material.dart';
import 'package:flutter_today_news/utils/net_util.dart';
import 'package:flutter_today_news/utils/net_url.dart';
class HomeApi {
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

  /// MARK: - 获取视频nav分类标题数据
  void requestVideoNavCategoryData(Function success, Function failure){
    String path = NetUrl.VIDEO_NAV_TITLE_URL;
    Map<String,dynamic> params = videoNavTabParams();
    debugPrint("请求的地址:$path");
    debugPrint("请求的参数:$params");
    NetUtil.getVideoNavCategoryData(path, params,success: (responseJson){
      success(responseJson);
    },failure: (error){
      failure(error);
    });
  }


  /// 获取首页分类数据 HomeFeedEntity
  void requestHomeFeedNewsData(String category,Function success, Function failure){
    // HOME_FEED_NEWS_DATA_URL
    String path = NetUrl.HOME_FEED_NEWS_DATA_URL;
    Map<String,dynamic> params = homeFeedNewsParams(category);
    debugPrint("请求的地址:$path");
    debugPrint("请求的参数:$params");
    NetUtil.getHomeFeedNewsData(path, params,success: (responseJson){
      success(responseJson);
    },failure: (error){
      failure(error);
    });
  }

  /// MARK: - video顶部nav数据
  Map<String,dynamic> videoNavTabParams(){
    var map = new Map<String,dynamic>();
    map["device_id"] = 28881040250;// 6096495334 //28881040250
    map["iid"] = 106722086688;
    return map;
  }

  /// MARK: - 首页feednews数据
  Map<String,dynamic> homeFeedNewsParams(String category){
    var map = new Map<String,dynamic>();
    map["device_id"] = 6096495334;// 6096495334 //28881040250
    map["category"] = category;
    map["iid"] = 106722086688;
    map["device_platform"] = "iphone";
    map["version_code"] = "6.2.7";
    return map;
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