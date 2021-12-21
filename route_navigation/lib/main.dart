import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:route_navigation/screen/home.dart';
import 'package:route_navigation/screen/next_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/home", page: () => Home()),
        // GetPage(
        //   name: "/nextScreen",
        //   page: ()=> NextScreen(),
        // ),
        GetPage(
          name: "/nextScreen/:someValue", 
          page: ()=> NextScreen()
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Get.toNamed(
                    "/home?channel=Nabeel Khanjee&content=Flutter Getx",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
