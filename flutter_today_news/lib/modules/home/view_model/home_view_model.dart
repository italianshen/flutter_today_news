import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/home/api/HomeApi.dart';
import 'package:flutter_today_news/modules/home/model/home_feed_entity.dart';
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

  // 请求视频tab页标题 https://is.snssdk.com/video_api/get_category/v1/?device_id=28881040250&iid=106722086688
  void requestVideoNavCategoryApiData(Function successHandler, Function failure){
    _homeApi.requestVideoNavCategoryData((response){
      Map responseJson = new Map<String, dynamic>.from(response);
      List dataList = responseJson["data"];
      /// 解析数据 HomeNavDataData
      List<HomeNavDataData> dataArr = new List();
      dataList.forEach((temp){
        if (temp is Map){
          HomeNavDataData data = HomeNavDataData.fromJson(temp);
          dataArr.add(data);
        }
      });
      successHandler(dataArr);
    }, failure);
  }


  /// 获取首页feednews 数据
  void requestHomeFeedNewsApiData(String category,Function success, Function failure){
    _homeApi.requestHomeFeedNewsData(category, (response){
      Map responseJson = new Map<String, dynamic>.from(response);
      List dataList = responseJson["data"];
      List<HomeFeedEntity> modelArr = new List();
      debugPrint("😀category:$category====${dataList.length}");
      dataList.forEach((temp){
        if(temp["content"] != null){
          String content = temp["content"];
          Map<String,dynamic> result = json.decode(content.toString());
          modelArr.add(HomeFeedEntity.fromJson(result));
        }
      });

      modelArr.forEach((model){
        debugPrint("🍏title:${model.title}===label:${model.stick_label}");
      });
      success(modelArr);
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

