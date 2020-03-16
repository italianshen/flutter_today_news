
import 'package:flutter_today_news/modules/account/api/account_api.dart';

class AccountViewModel {

  /// 初始化方法
  AccountApi _accountApi;
  /// 初始化方法
  void prepareNetWorkTool(){
    _accountApi = AccountApi();
  }

  /// MARK: - 请求cell列表数据
  void requestCellListData(Function success, Function failure){
    _accountApi.requestCellListData(success, failure);
  }

  /// 请求我的关注列表数据
  /// MARK: - 请求我的关注列表数据
  void requestMyAttentionListData(Function success, Function failure){
    _accountApi.requestCellListData(success, failure);
  }
}