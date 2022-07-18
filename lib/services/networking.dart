import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.urli);
  final String urli;

  Future getData() async{
    var url = Uri.parse(urli);
    Response response = await get(url);
    if(response.statusCode == 200){
      String data = response.body;
      return json.decode(data);
    }else{
      print(response.statusCode);
    }
  }
}