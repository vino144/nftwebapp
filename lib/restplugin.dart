import 'dart:convert';

import 'package:dio/dio.dart';

class restplugin {

  Future<String> getnftasset() async{
    try {

      Dio dio = new Dio();
      Response response = await dio.get("https://api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=20");
      return response.toString();
    } catch (e) {
      print(e);
      return "";
    }
  }

   getcollections() async{
    try {

      Dio dio = new Dio();
      Response response = await dio.get("https://api.opensea.io/api/v1/collections?offset=0");
      print(response);
      return response.toString();
    } catch (e) {
      print(e);
      return "";
    }
  }

  //     --url https://api.opensea.io/api/v1/asset/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/1/

  getsinglesset(String address, String token) async{
    try {

      address="0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb"   ;//address
      token="111"  ;//token
      print("ADDRESS: "+address);
      print("Token: "+token);
      String url="https://api.opensea.io/api/v1/asset/"+address+"/"+token+"/";
      Dio dio = Dio();
      Response response = await dio.get(url);
      //print(response);
      return response.toString();
    } catch (e) {
      //print("Please enter valid token"+e.toString());
      return "failure";
    }
  }
}

