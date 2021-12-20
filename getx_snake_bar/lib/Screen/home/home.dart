import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snake Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.snackbar(
                  "title",
                  "message",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.lightBlueAccent,
                  backgroundColor: Colors.grey,
                  animationDuration: Duration(milliseconds: 2000),
                  backgroundGradient: LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.transparent,
                    ],
                  ),
                  borderColor: Colors.lightBlueAccent,
                  borderWidth: 2,
                  boxShadows: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 15,
                      color: Colors.lightBlueAccent,
                    ),
                    
                  ],
                  isDismissible: true,
                  dismissDirection: SnackDismissDirection.HORIZONTAL,
                  
                );
              },
              child: const Text(
                "Show SnakeBar",
              ),
              color: Colors.lightBlueAccent,
              height: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
