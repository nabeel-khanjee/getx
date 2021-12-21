import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Next Screen",
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "This is next screen",
            //   style: TextStyle(color: Colors.red, fontSize: 30),
            // )
            Text(
              "${Get.parameters['someValue']}",
              style: TextStyle(color: Colors.red,fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
