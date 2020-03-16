import 'package:flutter/material.dart';
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
