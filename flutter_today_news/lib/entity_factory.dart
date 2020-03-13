import 'package:flutter_today_news/modules/home/model/home_feed_entity.dart';
import 'package:flutter_today_news/modules/home/model/home_nav_entity.dart';
import 'package:flutter_today_news/modules/account/model/account_cell_data_entity.dart';
import 'package:flutter_today_news/modules/account/model/my_attension_entity.dart';
import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_entity.dart';
import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_list_entity.dart';
import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_article_item_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeFeedEntity") {
      return HomeFeedEntity.fromJson(json) as T;
    } else if (T.toString() == "HomeNavEntity") {
      return HomeNavEntity.fromJson(json) as T;
    } else if (T.toString() == "AccountSectionEntity") {
      return AccountSectionEntity.fromJson(json) as T;
    } else if (T.toString() == "MyAttensionEntity") {
      return MyAttensionEntity.fromJson(json) as T;
    } else if (T.toString() == "WeitoutiaoEntity") {
      return WeitoutiaoEntity.fromJson(json) as T;
    } else if (T.toString() == "WeitoutiaoListEntity") {
      return WeitoutiaoListEntity.fromJson(json) as T;
    } else if (T.toString() == "WeitoutiaoArticleItemEntity") {
      return WeitoutiaoArticleItemEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}