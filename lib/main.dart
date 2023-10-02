import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_forcaste/constraints.dart';
import 'package:weather_forcaste/home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(colorBg1) ));
    return MaterialApp(
      title:'Flutter demo',
      home: HomePage( ),
      debugShowCheckedModeBanner: false,
    );
  }
}
