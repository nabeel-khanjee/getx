import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Route Navigation for un named",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Route Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(
                    Home(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.bounceInOut,
                  );
                  // go to home but no option to return to the previous screen
                  // Get.off(Home());
                  // go to home screen and cancle all prevoius screens/ routes
                  // Get.offAll(Home());
                  // go to home screen with some data 
                  Get.to(Home(),arguments: "Data form main");

                },
                child: Text("Go To Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
