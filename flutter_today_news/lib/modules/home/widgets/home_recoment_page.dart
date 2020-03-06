import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/home/view_model/home_view_model.dart';
import 'items/home_ad_feed_item.dart';
import 'items/home_ad_three_images_item.dart';
import 'items/home_feed_news_no_image_item.dart';
import 'items/home_feed_news_one_image_item.dart';
import 'items/home_feed_news_three_image_item.dart';
import 'items/home_guide_download_ad_item.dart';

/// 推荐页
class HomeRecomendPage extends StatefulWidget {
  @override
  _HomeRecomendPageState createState() => _HomeRecomendPageState();
}

class _HomeRecomendPageState extends State<HomeRecomendPage> with
    AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  /// 视图模型
  HomeViewModel _viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = HomeViewModel();
    _viewModel.prepareNetWorkTool();
  }


  @override
  Widget build(BuildContext context) {
    debugPrint("🌾");
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 30,
            itemBuilder: (BuildContext context,int index){
          return HomeFeedNewsThreeImageItem();
        }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
