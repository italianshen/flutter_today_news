import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/cupertino.dart';

class WebviewDetailPage extends StatefulWidget {
  final String url;
  final String title;
  final String postId;

  const WebviewDetailPage({Key key, this.postId, this.url, this.title})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => WebviewDetailPageState();
}

class WebviewDetailPageState extends State<WebviewDetailPage> {
  bool loaded = false;
  String detailDataStr;
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  WebviewDetailPageState({Key key});

  @override
  void initState() {
    super.initState();
    flutterWebViewPlugin.onStateChanged.listen((state) {
      if (state.type == WebViewState.finishLoad) {
        setState(() {
          loaded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> titleContent = [];
    titleContent.add(Text(
        widget.title == null || widget.title.isEmpty
            ? "详情"
            : widget.title,
        style: TextStyle(color: Color(0xff333333))));
    if (!loaded) {
      titleContent.add(Container(width: 10.0));
      titleContent.add(CupertinoActivityIndicator());
    }
    titleContent.add(Container(width: 50.0));
    return WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: titleContent,
        ),
        iconTheme: IconThemeData(color: Color(0xff333333)),
      ),
      withZoom: false,
      withLocalStorage: true,
      withJavascript: true,
    );
  }
}