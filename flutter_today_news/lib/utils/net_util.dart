import 'net.dart';

class NetUtil {
  /// 获取首页nav分类标题数据
  static void getHomeNavCategoryData(String url,Map<String,dynamic> params,{Function success, Function failure}){
    Net().get(url, params,success: success,failure: failure);
  }

}