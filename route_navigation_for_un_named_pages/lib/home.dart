import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is the home screen",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Next Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Back to main",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(
                color: Colors.green
                ),
              ),
          ],
        ),
      ),
    );
  }
}
