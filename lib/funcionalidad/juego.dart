import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';

class Juego extends StatelessWidget {
  const Juego({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("faltaaaa"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(MODE);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
