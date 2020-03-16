
import 'package:flutter/material.dart';
import 'package:flutter_today_news/utils/net_util.dart';
import 'package:flutter_today_news/utils/net_url.dart';

class AccountApi {

  /// MARK: - 请求cell列表数据
  void requestCellListData(Function success, Function failure){
    String path = NetUrl.ACCOUNT_CELL_DATA_URL;
    Map<String,dynamic> params = cellListDataParams();
    debugPrint("请求的地址:$path");
    debugPrint("请求的参数:$params");
    NetUtil.getAccountCellListDataApiData(path, params,success: (responseJson){
      success(responseJson);
    },failure: (error){
      failure(error);
    });
  }

  /// MARK: -  请求cell列表参数
  Map<String,dynamic> cellListDataParams(){
    var map = new Map<String,dynamic>();
    map["iid"] = 106722086688;
    return map;
  }

  /// MARK: - 请求我的关注列表数据
  void requestMyAttentionListData(Function success, Function failure){
    String path = NetUrl.ACCOUNT_ATTENTION_DATA_URL;
    Map<String,dynamic> params = myAttensionParams();
    debugPrint("请求的地址:$path");
    debugPrint("请求的参数:$params");
    NetUtil.getAccountMyAttensionApiData(path, params,success: (responseJson){
      success(responseJson);
    },failure: (error){
      failure(error);
    });
  }

  /// MARK: -  请求我的关注列表参数
  Map<String,dynamic> myAttensionParams(){
    var map = new Map<String,dynamic>();
    map["device_id"] = 6096495334;
    return map;
  }
}