import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/home/model/home_feed_entity.dart';
import 'package:flutter_today_news/modules/home/view_model/home_view_model.dart';
import 'package:flutter_today_news/modules/home/widgets/items/home_video_list_item.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// 推荐页
class VideoTopicPage extends StatefulWidget {
  /// 分类
  String category= "";

  VideoTopicPage(this.category);

  @override
  _VideoTopicPageState createState() => _VideoTopicPageState();
}

class _VideoTopicPageState extends State<VideoTopicPage> with
    AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  /// 视图模型
  HomeViewModel _viewModel;
  /// 刷新控制器
  RefreshController _refreshController = new RefreshController(initialRefresh: true);
  /// 滚动控制器
  ScrollController _scrollController = new ScrollController();

  /// 数据源
  List<HomeFeedEntity> dataSource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = HomeViewModel();
    _viewModel.prepareNetWorkTool();
    dataSource = new List();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _scrollController.dispose();
    super.dispose();
  }


  /// 获取数据
  Future getNewData() async {
    _viewModel.requestHomeFeedNewsApiData(widget.category, (response){
      _refreshController.refreshCompleted(resetFooterState: true);
      setState(() {
        dataSource.clear();
        dataSource.addAll(response);
      });
    }, (error){
      _refreshController.loadFailed();
      Fluttertoast.showToast(msg: error);
    });
  }

  /// 获取新数据
  Future getMoreData() async{
    _viewModel.requestHomeFeedNewsApiData(widget.category, (response){
      _refreshController.refreshCompleted(resetFooterState: true);
      List<HomeFeedEntity> modelArr = response;
      if (modelArr.length > 0){
        setState(() {
          dataSource.addAll(response);
        });
      }else{
        _refreshController.loadNoData();
      }
    }, (error){
      _refreshController.loadFailed();
      Fluttertoast.showToast(msg: error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: MaterialClassicHeader(),
        controller: _refreshController,
        onRefresh: getNewData,
        onLoading: getMoreData,
        child: dataSource.length != 0 ? ListView.builder(
          itemBuilder: _buildListViewItem,
          controller: _scrollController,
          physics: new AlwaysScrollableScrollPhysics(),
          itemCount: dataSource.length,
        ): Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/refresh/dropdown_loading_00@2x.png",
              scale: 1.0,width: 50.0,height: 50.0,),
            SizedBox(height: 10.0,),
            Text("暂无数据")
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  // video 显示视频item
  // subscription 头条号
  // essay_joke 段子
  // 组图 组图
  // image_ppmm 组图
  // weitoutiao.cell_type! == 32 用户
  // weitoutiao.cell_type! == 50 相关关注
  // 其他
  // /// 是否有图片
  // 1.if let hasImage = weitoutiao!.has_image 中间是图片
  // 2.if let hasVideo = weitoutiao!.has_video 中间是视频
  // 3.if weitoutiao!.thumb_image_list.count != 0 显示网格视图(画廊效果)

  /// 创建子视图
  Widget _buildListViewItem(BuildContext context,int index){
    HomeFeedEntity entity = dataSource[index];
    return HomeFeedNewsVideoListItem(
        entity.title,
        entity.readCount.toString() + "次播放",
        "01:39",
        entity.shareLargeImage.url,
        entity.mediaInfo.avatarUrl,
        entity.mediaInfo.name
    );
  }
}