import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/account/model/my_attension_entity.dart';
import 'package:flutter_today_news/modules/account/view_model/account_view_model.dart';
import 'MineItemWidget.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  MyAttensionEntity entity;

  /// 视图模型
  AccountViewModel _viewModel;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = AccountViewModel();
    _viewModel.prepareNetWorkTool();

    /// 请求数据
    _viewModel.requestCellListData((responseJson){
      debugPrint("🍎responseJson1:${responseJson}");
    }, (error){
      debugPrint("error:${error}");
    });

    _viewModel.requestMyAttentionListData((responseJson){
      debugPrint("🍎responseJson2:${responseJson}");
    }, (error){
      debugPrint("error:${error}");
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我的"),
          leading: GestureDetector(
            child: Icon(Icons.email),
            onTap: (){
              debugPrint("点击了邮箱");
            },
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: FlatButton(onPressed: (){
                  debugPrint("点击了设置");
                }, child: Icon(Icons.settings),
                  textColor: Colors.white,
                )
            )
//          SizedBox(width: 15.0,)
          ],
        ),
        body: Container(
          color: Color.fromRGBO(245, 245, 245, 1),
          child: ListView(
            children: <Widget>[
              MineItemWidget("images/moneyMount@3x.png", "钱包",onTap: (){
                debugPrint("免费赚钱");
              },),
              MineItemWidget("images/shalou@3x.png", "消息通知",onTap: (){
                debugPrint("免流量服务");
              },),

              _listViewLine,
              MineItemWidget("images/scan@3x.png", "免流量服务",onTap: (){
                debugPrint("免流量服务");
              },),
              MineItemWidget("images/moon@3x.png", "广告推广",onTap: (){
                //ThemeSettingPage

              },),
              _listViewLine,
              MineItemWidget("images/advice@3x.png", "用户反馈",onTap: (){
                debugPrint("帮助与反馈");
              },),
              MineItemWidget("images/advice@3x.png", "系统设置",onTap: (){
                debugPrint("系统设置");
              },),
            ],
          ),
        )
    );
  }

  // 分割线
  Widget get _listViewLine {
    return Container(
      color: Color(0xffeaeaea),
      height: 10,
    );
  }
}
