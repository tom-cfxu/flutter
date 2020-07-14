import 'package:flutter/material.dart';
import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/choose_location.dart';
import 'package:first_app/pages/loading.dart';
void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    "/":(context)=>Loading(),
    "/home":(context)=>Home(),
    "/location":(context)=>ChooseLoaction(),
  },
));


