import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_today_news/modules/account/model/account_cell_data_entity.dart';
import 'package:flutter_today_news/modules/account/model/my_attension_entity.dart';
import 'package:flutter_today_news/modules/account/view_model/account_view_model.dart';
import 'MineItemWidget.dart';
import 'account_header_view.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  MyAttensionEntity entity;

  /// 视图模型
  AccountViewModel _viewModel;

  /// cell的数据源
  List<AccountCellEntity> dataSource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = AccountViewModel();
    _viewModel.prepareNetWorkTool();

    /// 请求数据
    _viewModel.requestCellListData((responseJson){
      // AccountSectionEntity
      Map responseDict = Map.from(responseJson);
      Map dataDict = Map.from(responseDict["data"]);
      Map dataJson= new Map<String, dynamic>.from(dataDict);
      AccountSectionEntity entity = AccountSectionEntity.fromJson(dataJson);
      setState(() {
        this.dataSource = entity.sections;
      });
    }, (error){
      debugPrint("error:${error}");
    });

    _viewModel.requestMyAttentionListData((responseJson){
//      debugPrint("🍎responseJson2:${responseJson}");
    }, (error){
      debugPrint("error:${error}");
    });
  }


  @override
  Widget build(BuildContext context) {
    return _createLiveContentView();
  }


  Widget _createLiveContentView(){
    double screenW = MediaQuery.of(context).size.width;
    final double topPadding = MediaQuery.of(context).padding.top;
    double headerH = ScreenUtil().setWidth(topPadding == 44.0 ? 380 : 290.0);
    double concernH = ScreenUtil().setWidth(114);
    return  Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: headerH,
              color: Colors.white,
              // 登录部分
              child: AccountHeaderView(),
            ),
          ),
          ///我的关注
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(bottom: 10.0),
              color: Colors.white,
              height: concernH,
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          _layoutContentView(),
        ],
      ),
    );
  }

  /// 布局内容部分视图
  Widget _layoutContentView(){
    return dataSource == null ?  SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        color: Colors.white,
        height: 100,
        child: Container(
          color: Colors.green,
        ),
      ),
    ) : SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return _buildListViewItem(context, index);
        },
        childCount: dataSource.length * 2,
      ),
    );
  }


  Widget _buildListViewItem(BuildContext context,int index){
    int idx = index ~/ 2;
    AccountCellEntity entity = dataSource[idx];
    debugPrint("🍏index:${index}====idx:${idx}===text:${entity.text}");
    return (index.isOdd) ? MineItemWidget(entity.icons.day.url, entity.text,onTap: (){
      debugPrint("text:${entity.text}");
    },) : (idx.isOdd ? _listViewLine(1.0) : (idx == 0 ? _listViewLine(0.0) : _listViewLine(10.0)));
  }

  /// 分割线
  Widget _listViewLine(double height) {
    return Container(
      color: Color(0xffeaeaea),
      height: height,
    );
  }
}
