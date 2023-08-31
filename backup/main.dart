import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:test/pages/right_drawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Focus Lane",
      //home:  RightDrawer(),
    );
  }
}
