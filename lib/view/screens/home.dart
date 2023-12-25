import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screens/ScreenOne.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var name = 'SULAIMAAN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Tutorials'),),
      body: SafeArea(child: 
      Container(
        width: Get.width/2,
        height: Get.height/2,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const Icon(Icons.navigate_next),
                TextButton(child: const Text('Go To Screen Two!'), onPressed: (){
                  Get.toNamed('screenOne', arguments: [
                    '$name',
                    'Savio',
                    'Don Jo'
                  ]);},),
              ],
            ),        ],
        ),
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){Get.snackbar(
        'GetX Tutorials', 'Sample message',
        icon: Icon(Icons.add),
        snackPosition: SnackPosition.BOTTOM);}),
    );
  }
}