import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('BMI Calculator',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),),
        ),
        body: MainScreen(),
      ),
    ),
  );
}
