

import 'package:flutter/material.dart';
import 'package:lec_8/first_screen.dart';
import 'package:lec_8/second_screen.dart';
import 'package:lec_8/third_screen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }

}