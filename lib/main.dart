import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screens/ScreenOne.dart';
import 'package:getx/view/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()), //we usually denote the homescreen with just a slash and the rest with the / and the name..
        //The slash is necessary. Keep that in mind.
        GetPage(name: '/screenOne', page: () => ScreenOne())
      ],
    );
  }
}