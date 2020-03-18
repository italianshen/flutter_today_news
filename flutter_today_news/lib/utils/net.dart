import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum Method {
  get,
  post
}


class Net{

  // 工厂模式
  factory Net() => _getInstance();

  static Net get instance =>_getInstance();

  static Net _instance;

  Dio dio;

  Net._internal(){
    // 初始化
    dio = Dio(

        BaseOptions(
          connectTimeout: 6000,// 连接服务器超时时间，单位是毫秒.
          receiveTimeout: 10000,// 响应流上前后两次接受到数据的间隔，单位为毫秒, 这并不是接收数据的总时限.
        )
    );
  }

  // 单例模式
  static Net _getInstance(){
    if(_instance == null){
      _instance = Net._internal();
    }
    return _instance;
  }


  //MARK: - get请求
  get(String url,Map<String,dynamic>params,{Function success,Function failure}){
    _doRequest(url, params, Method.get, success, failure);
  }

  post(String url,Map<String,dynamic>params,{Function success,Function failure}){
    _doRequest(url, params, Method.post, success, failure);
  }


  void _doRequest(String url,Map<String,dynamic>params,
      Method method,Function
      successCallBack,Function failureCallBack) async {
    try {
      Response response;
      switch (method){
        case Method.get:
          print("get");
          if(params != null && params.isNotEmpty){
            response = await dio.get(url,queryParameters: params);
          }else{
            response = await dio.get(url);
          }
          break;
        case Method.post:
          print("post");
          if(params != null && params.isNotEmpty){
            response = await dio.post(url,queryParameters: params);
          }else{
            response = await dio.post(url);
          }
          break;
      }
      Map<String,dynamic> result = json.decode(response.toString());
      print('''🌐 api: $url\nparams: $params\nresult: $result''');
      successCallBack(result);
    }catch (exception){
      print('错误：${exception.toString()}');
      Fluttertoast.showToast(msg: "请求失败，请稍后再试" + exception.toString());
      if(failureCallBack != null){
        failureCallBack(exception.toString());
      }
    }
  }
}

