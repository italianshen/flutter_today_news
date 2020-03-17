import 'package:flutter/material.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_toolbar_view.dart';
import 'package:flutter_today_news/modules/weitoutiao/widgets/weitoutiao_userinfo_view.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:flutter_today_news/utils/fade_route.dart';
import 'package:flutter_today_news/utils/photoview_gallery_screen.dart';
import 'package:provider/provider.dart';
// 转发微头条

class WeitoutiaoRetwitteredItem extends StatefulWidget {
  /// 转发内容
  String retwitterContent = "这样说话十分不妥。再说吃屎也要区分，猫屎咖啡吃就吃了，很贵；童便是中药，掐头尾吃中间，还治病。再者说吃不吃是自己的事，直播就不道德了。//@酒窝甜蜜:马爷不忍心让你直播吃翔[捂脸]//@疯狂我最拽:如果马爷回复我，我直播吃屎！立贴为证！顶我上去！";

  /// 原创内容
  String orginalContent = "早上来上海观复博物馆时，工作人员正在做开馆前的准备，随手拍了几张无人时的照片。在上海中心大厦37层上，又一次印证了我的办馆理念：没来时不能想象，来了也不能复述。";
  /// 原创微头条的作者
  String screenName = "马未都";

  /// 发布动态的人头像
  String avatar = "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6";
  /// 发布动态的人作者
  String userName = "马未都";
  /// 发布时间
  String createTime = "12-02 18:07";

  List<String> images = [
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6",
    "http://p9.pstatp.com/thumb/2c5e0004a6385965f1b6"
  ];

  /// 多少人阅读
  String readText = "875 阅读";
  /// 点赞数
  String likeText = "41万";
  /// 评论数
  String commentText = "46";
  /// 转发数
  String forwardText = "46";

  WeitoutiaoRetwitteredItem(
      this.retwitterContent,
      this.orginalContent,
      this.screenName,
      this.avatar,
      this.userName,
      this.createTime,
      this.images,
      this.readText,
      this.likeText,
      this.commentText,
      this.forwardText,
      );


  @override
  _WeitoutiaoRetwitteredItemState createState() => _WeitoutiaoRetwitteredItemState();
}

class _WeitoutiaoRetwitteredItemState extends State<WeitoutiaoRetwitteredItem> {

  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// 头像信息部分
          WeitoutiaoUserInfoView(
              widget.avatar,
              widget.userName,
              widget.createTime
          ),
          /// 转发标题内容
          _buildRetwitterContentView(),
          /// 转发部分内容
          _buildOrignThreadContentView(context),
          /// 多少人阅读
          _buildReadCountView(),
          _listViewLine(1.0),
          WeitoutiaoToolBarView(
              widget.likeText,
              widget.commentText,
              widget.forwardText
          ),
          _listViewLine(10.0),
        ],
      ),
    );
  }

  /// 转发的内容部分
  Widget _buildRetwitterContentView(){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.tableViewBackgroundColor(),
      padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
      child: Text(
        widget.retwitterContent,
        style: TextStyle(
          color: model.blackColor(),
          fontSize: 16.0
        ),
      ),
    );
  }

  /// 原创内容
  Widget _buildOrignThreadContentView(BuildContext context){
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.greyColor(),
      padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0,top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(widget.screenName + widget.orginalContent,style: TextStyle(
            fontSize: 16.0,
            color: model.blackColor()
          ),),
          _buildGirdViewImageContent(context)
        ],
      ),
    );
  }

  Widget _buildGirdViewImageContent(BuildContext context){
    // 如果是一张图 crossAxisCount：1
    // 如果是2张图 crossAxisCount：2
    // 如果是3张图 crossAxisCount：3
    // 如果是4张图 crossAxisCount：3
    int crossCount = widget.images.length >= 3 ? 3 : 2;
    return widget.images.length == 0 ? Container(
      color: Colors.orange,
      height: 0.0,
    ) : Container(
        margin: EdgeInsets.only(top: 15.0),
        child: GridView.builder(
            itemCount: widget.images.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossCount,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.0
            ),
            itemBuilder: (BuildContext context,int index){
              return InkWell(
                 child: Image.network(widget.images[index],fit: BoxFit.cover,),
                 onTap: (){
                   //FadeRoute是自定义的切换过度动画（渐隐渐现） 如果不需要 可以使用默认的MaterialPageRoute
                   Navigator.of(context).push(new FadeRoute(page: PhotoViewGalleryScreen(
                     images:widget.images,//传入图片list
                     index: index,//传入当前点击的图片的index
                     heroTag: widget.images[index],//传入当前点击的图片的hero tag （可选）
                   )));
                 },
                );
            })
    );
  }

  //PhotoViewGalleryScreen

  /// 多少人已阅读
  Widget _buildReadCountView(){
    return Container(
      padding: EdgeInsets.only(left: 15.0,top: 0.0,bottom: 10.0),
      child: Text(widget.readText,style: TextStyle(
        fontSize: 12.0,
        color: Colors.grey
      ),),
    );
  }


  /// 分割线
  Widget _listViewLine(double height) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    return Container(
      color: model.dividerColor(),
      height: height,
    );
  }
}


