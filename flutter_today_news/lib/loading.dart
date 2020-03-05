import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoadingPageState();
  }
}

class _LoadingPageState extends State<LoadingPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      print('跳转到应用主页面');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('images/LaunchImage.png',fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }
}