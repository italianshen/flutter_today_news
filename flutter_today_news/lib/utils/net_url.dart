class NetUrl {
  // 服务器地址
  static const String BASE_URL = "https://is.snssdk.com";
  // 首页tab标题分类接口 https://is.snssdk.com/article/category/get_subscribed/v1/
  static const String HOME_NAV_TITLE_URL = BASE_URL + "/article/category/get_subscribed/v1/";
  /// 首页新闻feednews数据接口
  static const String HOME_FEED_NEWS_DATA_URL = BASE_URL + "/api/news/feed/v58/";
  /// 视频tab标题分类接口
  static const String VIDEO_NAV_TITLE_URL = BASE_URL + "/video_api/get_category/v1/";
  /// 账号页cell 接口地址
  static const String ACCOUNT_CELL_DATA_URL = BASE_URL + "/user/tab/tabs/";
  /// 账号页我的关注
  static const String ACCOUNT_ATTENTION_DATA_URL = BASE_URL + "/concern/v2/follow/my_follow/";
}