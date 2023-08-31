import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test/splash_screen00.dart';
import 'firebase_options.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main() async {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Lane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // home: CartPage(),
    );
  }
}
