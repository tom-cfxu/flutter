import 'package:flutter/material.dart';
class ChooseLoaction extends StatefulWidget {
  @override
  _ChooseLoactionState createState() => _ChooseLoactionState();
}

class _ChooseLoactionState extends State<ChooseLoaction> {
  int counter =0;

  @override

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
//    print("dispose function ran");
  }
  @override
  Widget build(BuildContext context) {
//    print("build function ran");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title:Text('选择一个国家'),
          centerTitle: true,
          elevation:0
        ),
        body:RaisedButton(
          onPressed: (){
            setState(() {
              counter +=1;
            });
          },
          child: Text("counter is $counter"),
        )
    );
  }
}
