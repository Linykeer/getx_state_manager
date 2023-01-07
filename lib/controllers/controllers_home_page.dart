import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllersHomePage extends StatefulWidget {
  const ControllersHomePage({Key? key}) : super(key: key);

  @override
  State<ControllersHomePage> createState() => _ControllersHomePageState();
}

class _ControllersHomePageState extends State<ControllersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/controllers/getxController');
              },
              child: const Text('GetXController'),
            ),
          ],
        ),
      ),
    );
  }
}
