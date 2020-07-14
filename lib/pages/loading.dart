import 'package:flutter/material.dart';
import 'package:first_app/services/world_time.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance=WorldTime(location: "北京",flag: "China.png",url:"Asia/Shanghai");
    await instance.getData();
    print(instance.time);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print("initState function ran");
//    print("方法");
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Text("loading screen"))
    );
  }
}
