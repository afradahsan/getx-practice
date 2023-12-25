import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key, });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen One'),),
      body: SafeArea(child: Column(
        children: [
          Icon(Icons.navigate_next),
          TextButton(child: Text('Go Back ${Get.arguments[0]}!'), onPressed: (){Get.back();},),
        ],
      )),
    );
  }
}