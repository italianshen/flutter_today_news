import 'package:flutter/material.dart';
import 'package:flutter_today_news/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'consts/theme_model.dart';
import 'loading.dart';
void main() => runApp(
    MultiProvider(providers: [
  //ThemeModel
  ChangeNotifierProvider<ThemeModel>.value(value: ThemeModel()),
],
child: MyApp(),),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeModel model = Provider.of<ThemeModel>(context);
    ThemeData themeData = model.themeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      routes: <String,WidgetBuilder>{
        'app':(BuildContext context) => AppPage()
      },
      home: LoadingPage(),
    );
  }
}
