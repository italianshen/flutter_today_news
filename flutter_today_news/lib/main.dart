import 'package:flutter/material.dart';
import 'package:flutter_today_news/utils/gif_header.dart';
import 'app.dart';
import 'consts/theme_model.dart';
import 'loading.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: navBarTintColor
      ),
      routes: <String,WidgetBuilder>{
        'app':(BuildContext context) => AppPage()
      },
      home: LoadingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Map<int, Image> imageCaches;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageCaches = new Map();
    imageCaches[0] = Image.asset("images/refresh/dropdown_loading_00@2x.png",scale: 1.0,);
    imageCaches[1] = Image.asset("images/refresh/dropdown_loading_01@2x.png",scale: 1.0,);
    imageCaches[2] = Image.asset("images/refresh/dropdown_loading_02@2x.png",scale: 1.0,);
    imageCaches[3] = Image.asset("images/refresh/dropdown_loading_03@2x.png",scale: 1.0,);
    imageCaches[4] = Image.asset("images/refresh/dropdown_loading_04@2x.png",scale: 1.0,);
    imageCaches[5] = Image.asset("images/refresh/dropdown_loading_05@2x.png",scale: 1.0,);
    imageCaches[6] = Image.asset("images/refresh/dropdown_loading_06@2x.png",scale: 1.0,);
    imageCaches[7] = Image.asset("images/refresh/dropdown_loading_07@2x.png",scale: 1.0,);
    imageCaches[8] = Image.asset("images/refresh/dropdown_loading_08@2x.png",scale: 1.0,);
    imageCaches[9] = Image.asset("images/refresh/dropdown_loading_09@2x.png",scale: 1.0,);
    imageCaches[10] = Image.asset("images/refresh/dropdown_loading_10@2x.png",scale: 1.0,);
    imageCaches[11] = Image.asset("images/refresh/dropdown_loading_11@2x.png",scale: 1.0,);
    imageCaches[12] = Image.asset("images/refresh/dropdown_loading_12@2x.png",scale: 1.0,);
    imageCaches[13] = Image.asset("images/refresh/dropdown_loading_13@2x.png",scale: 1.0,);
    imageCaches[14] = Image.asset("images/refresh/dropdown_loading_14@2x.png",scale: 1.0,);
    imageCaches[15] = Image.asset("images/refresh/dropdown_loading_15@2x.png",scale: 1.0,);
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("测试"),
      ),
      body: Center(
        child:ImagesAnim(imageCaches, 100, 150, Colors.transparent),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
