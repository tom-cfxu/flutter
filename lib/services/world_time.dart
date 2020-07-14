import 'package:http/http.dart';
import 'dart:convert';
class WorldTime{

  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location,this.flag,this.url});

  void getData() async{
    //http request
    Response response= await get("http://worldtimeapi.org/api/timezone/$url");
    Map data=jsonDecode(response.body);
//    print(data);
    String datetime =data['datetime'];
    String offset=data['utc_offset'].substring(1,3);
//    print(offset);
    //创建时间对象
    DateTime now =DateTime.parse(datetime);
    now=now.add(Duration(hours:int.parse(offset)));
    time =now.toString();
//    print(now);
  }
}