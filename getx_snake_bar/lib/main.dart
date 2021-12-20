import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_snake_bar/Screen/home/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snake Bar",
      home: HomePage(),
    );
  }
}
