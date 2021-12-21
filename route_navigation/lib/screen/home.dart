import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.back();
              },
              child: Text("back to main"),
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                // Get.toNamed("/nextScreen");
                Get.toNamed("/nextScreen/1234");
              },
              child: Text("Next Screen"),
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
