
import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/home/widgets/wenda_page.dart';

import 'home_focus_page.dart';
import 'home_location_news_page.dart';
import 'home_recoment_page.dart';
import 'home_video_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin{

  final List<String> _tabs = ["推荐","热点","视频","深圳","问答"];
  /// tabBarController
  TabController _tabController;
  /// 推荐
  HomeRecomendPage homePage;
  /// 热点
  HomeFocusPage focusPage;
  /// 视频
  HomeVideosPage videoPage;
  /// 深圳
  HomeLocationNewsPage locationNewsPage;
  /// 问答页
  HomeWendaPage wendaPage;
  /// 列表页
  List<Widget> tabPages;

  /// 根据标题或者索引去获取对应的widget
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    debugPrint("🤣 开始初始化>>>>");
    _tabController = TabController(length: _tabs.length, vsync: this);
    tabPages = new List();
    /// 推荐
    homePage = HomeRecomendPage();
    /// 热点
    focusPage = HomeFocusPage() ;
    /// 视频
    videoPage = HomeVideosPage();
    /// 深圳
    locationNewsPage = HomeLocationNewsPage();
    /// 问答页
    wendaPage = HomeWendaPage();
    tabPages.add(homePage);
    tabPages.add(focusPage);
    tabPages.add(videoPage);
    tabPages.add(locationNewsPage);
    tabPages.add(wendaPage);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  /// 初始化tab
  Widget _initChannelTitle(){
    return TabBar(
        controller: _tabController,
        indicatorColor: Colors.white,
        tabs: _tabs.map((item) => Tab(text: item,)).toList()
    );
  }

  /// 初始化内容列表
  Widget _initChannelList(){
    return TabBarView(
        controller: _tabController,
        children: tabPages
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text("首页"),
              bottom: _initChannelTitle(),
            ),
            body: _initChannelList()
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}

