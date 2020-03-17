import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeFeedNewsThreeImageItem extends StatelessWidget {

  /// 标题
  String title = "据韩联社刚刚消息，韩国9日0时起暂停日本公民免签证入境。韩联社报道截图责编：刘婕版权作品，未经环球网huanqiu.com 书面授权，严禁转载，违者将被追究法律责任。";
  /// 图片列表
  List<String> images =
  [
    "http://p1-tt.byteimg.com/img/pgc-image/da0c7edc7b0c4a1dbfa76bc6408ff447~tplv-tt-cs0:340:453.jpg",
    "http://p9-tt.byteimg.com/img/pgc-image/e1d6cffdb10d41f88ba867b2502db7b4~tplv-tt-cs0:700:467.jpg",
    "http://p1-tt.byteimg.com/img/pgc-image/e2c76a2a4f654cefb24ef7113adc5bcb~tplv-tt-cs0:700:467.jpg"
  ];
  /// 广告栏
  String adText = "60条评论 38分钟前";

  String source = "环球时报新媒体";

  HomeFeedNewsThreeImageItem(this.title,this.images,this.adText,this.source);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = 15.0;
    double itemMargin = 5.0;
    // 图片 224/150 图片长宽比
    double picWidth = (screenWidth - 2.0 * margin - 2.0 * itemMargin)/3.0 ;
    double picHeight = picWidth * 176/218;
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0,bottom: 10.0,top: 10.0,right: 15.0),
            color: model.tableViewBackgroundColor(),
            child: Text(title,style: TextStyle(
                fontSize: 16.0,
                color: model.blackColor(),
                fontWeight: FontWeight.w400
            ),),
          ),
          Container(
            height: picHeight,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            color: model.tableViewBackgroundColor(),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: picHeight,
                  child: _layoutCenterPhotoView(),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            height: 40.0,
            color: model.tableViewBackgroundColor(),
            child: _createBottomView(),
          ),
          Divider(
            height: 1.0,
            color: model.dividerColor(),
            indent: 15.0,
          )

        ],
      ),
    );
  }

  /// 布局中间的gridview
  Widget _layoutCenterPhotoView(){
    return GridView.builder(
       itemCount: images.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,childAspectRatio: 218/176,
            crossAxisSpacing: 5.0
        ),
        itemBuilder: (BuildContext context,int index){
          return Image.network(images[index],
            fit: BoxFit.cover,
          );
        });
  }

  /// 构建底部视图
  Widget _createBottomView(){
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 20.0,
            child: Text(source,style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey
            ),),
          ),
          SizedBox(width: 10.0,),
          Expanded(child: Text(adText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0
            ),)),
          GestureDetector(
            onTap: (){
              debugPrint("点击了删除按钮");
            },
            child: Image.asset("images/home/add_textpage_17x12_@2x.png",
              scale: 1.0,fit: BoxFit.cover,
              width: 17.0,
              height: 12.0,
            ),
          )
        ],
      ),
    );
  }
}
