import 'net.dart';

class NetUtil {
  /// 获取首页nav分类标题数据
  static void getHomeNavCategoryData(String url,Map<String,dynamic> params,{Function success, Function failure}){
    Net().get(url, params,success: success,failure: failure);
  }

  /// 获取首页新闻的数据
  static void getHomeFeedNewsData(String url,Map<String,dynamic> params,{Function success, Function failure}){
    Net().get(url, params,success: success,failure: failure);
  }

  /// 请求视频tab页数据
  static void getVideoNavCategoryData(String url,Map<String,dynamic> params,{Function success, Function failure}){
    Net().get(url, params,success: success,failure: failure);
  }

}