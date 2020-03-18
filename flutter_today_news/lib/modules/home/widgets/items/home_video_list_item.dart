import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:flutter_today_news/utils/video_player_screen.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
class HomeFeedNewsVideoListItem extends StatefulWidget {
  /// 标题
  String title = "印度苦行僧13岁开始绝食，78年不吃喝不排泄，现在情况如何?";
  /// 播放次数
  String playTimesText = "2次播放";
  /// 持续时间
  String duration = "01:30";
  /// 封面大图
  String image = "https://resources.ninghao.net/images/childhood-in-a-picture.jpg";
  /// 头像
  String mediaAvatar = "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg";
  /// 名称
  String mediaName = "南国早报";

  /// 构造方法
  HomeFeedNewsVideoListItem(this.title,this.playTimesText,this.duration,this.image,this.mediaAvatar,this.mediaName);



  @override
  _HomeFeedNewsVideoListItemState createState() => _HomeFeedNewsVideoListItemState();
}

class _HomeFeedNewsVideoListItemState extends State<HomeFeedNewsVideoListItem> {
  /// 网络请求库
  Dio dio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化
    dio = Dio(

        BaseOptions(
          connectTimeout: 6000,// 连接服务器超时时间，单位是毫秒.
          receiveTimeout: 10000,// 响应流上前后两次接受到数据的间隔，单位为毫秒, 这并不是接收数据的总时限.
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double picHeight = screenWidth * 9.0/16.0;
    ThemeModel model = Provider.of<ThemeModel>(context);
    return InkWell(
      onTap: (){
        debugPrint("点击了item");
      },
      child: Container(
        color: model.tableViewBackgroundColor(),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(widget.image,width: screenWidth,height: picHeight,fit: BoxFit.cover,),
                Positioned.fill(
                    left: 15.0,
                    top: 10.0,
                    right: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.title,style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),),
                        SizedBox(height: 10.0,),
                        Text(widget.playTimesText,style:TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0
                        ) ,),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Image.asset("images/play_icon.png",width: 44.0,height: 44.0,),
                              onTap: (){
                                debugPrint("点击了播放按钮 测试上传图片");
                                //VideoPlayerScreen
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                                  return VideoPlayerScreen();
                                }));
                              },
                            )
                          ],
                        )
                      ],
                    )
                ),
                Positioned(
                  right: 10.0,
                  bottom: 10.0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 48.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(69, 70, 71, 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      child: Text(widget.duration,style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white
                      ),),
                    )
                )
              ],
            ),
            Container(
              color: model.tableViewBackgroundColor(),
              height: 50.0,
              width: screenWidth,
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          widget.mediaAvatar,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0,),
                  Expanded(child: Text(
                    widget.mediaName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Container(
                    width: 150.0,
                    color: model.tableViewBackgroundColor(),
                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        InkWell(child: Image.asset("images/home/video_add_24x24_@2x.png",
                          scale:1.0,width: 24,height: 24,color: model.blackColor(),),onTap: (){
                          debugPrint("点击了关注");
                        },),
                        SizedBox(width: 3.0,),
                        Text(
                          "关注",
                          style: getTextStyle(model.blackColor(), 12.0, false),
                        ),
                        SizedBox(width: 8.0,),
                        InkWell(child: Image.asset("images/home/comment_24x24_@2x.png",
                          scale:1.0,width: 24,height: 24,color: model.blackColor(),),onTap: (){
                          debugPrint("点击了评论");
                        },),
                        SizedBox(width: 3.0,),
                        Text(
                          "评论",
                          style: getTextStyle(model.blackColor(), 12.0, false),
                        ),
                        SizedBox(width: 8.0,),
                        InkWell(child: Image.asset("images/home/More_24x24_@2x.png",
                          scale:1.0,width: 24,height: 24,color: model.blackColor(),),onTap: (){
                          debugPrint("点击了更多");
                        },),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10.0,
              color: model.dividerColor(),
            )
          ],
        ),
      ),
    );
  }

  /// TextStyle:封装
  TextStyle getTextStyle(Color colors,double fontsizes,bool isFontWeight){
    return TextStyle(
      color:colors,
      fontSize: fontsizes,
      fontWeight: isFontWeight == true ? FontWeight.bold : FontWeight.normal ,
    );
  }

  /// TODO:上传图片
  _uploadImages() async {
    var url = 'http://stack.mynatapp.cc/api/business/addBusinessMore';
//    FormData formData = FormData.fromMap({
//      "files": await MultipartFile.fromFile("/Users/danny/Desktop/toutiao_git_march_05/flutter_today_news/flutter_today_news/images/121-bigskin-2.jpg",filename: "121-bigskin-2.jpg"),
//      "files":  await MultipartFile.fromFile("/Users/danny/Desktop/toutiao_git_march_05/flutter_today_news/flutter_today_news/images/121-bigskin-1.jpg",filename: "121-bigskin-1.jpg"),
//    });

    FormData formData = FormData.fromMap({
      "files": [
        await MultipartFile.fromFile("/Users/danny/Desktop/toutiao_git_march_05/flutter_today_news/flutter_today_news/images/121-bigskin-2.jpg",filename: "121-bigskin-2.jpg"),
        await MultipartFile.fromFile("/Users/danny/Desktop/toutiao_git_march_05/flutter_today_news/flutter_today_news/images/121-bigskin-1.jpg",filename: "121-bigskin-1.jpg")
      ]
    });

    var dio = new Dio();
    var response = await dio.post(url, data:formData);
    String res = response.data.toString();

    print(res);
    print(res.runtimeType); // String

  }
}


