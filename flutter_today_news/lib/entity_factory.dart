import 'package:flutter_today_news/modules/home/model/home_nav_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeNavEntity") {
      return HomeNavEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}