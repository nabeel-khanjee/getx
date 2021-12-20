import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                      ),
                      middleText: "Dialog Text",
                      middleTextStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white
                      ),
                      backgroundColor: Colors.blueAccent,
                      content: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(child: 
                              Text("Date Loading",style: TextStyle(color: Colors.white),),),

                            ]
                          ),
                        ),
                      ),
                      textCancel: "Cancle",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.blueAccent,
                      onCancel: () {
                        
                      },
                      onConfirm: () {
                        
                      },
                      buttonColor: Colors.white

                    );
                  },
                  child: const Text("Show Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
