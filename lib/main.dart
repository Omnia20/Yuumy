import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_cake/pages/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yummy',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}




