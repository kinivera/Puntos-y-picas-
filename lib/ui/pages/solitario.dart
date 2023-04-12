import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../funcionalidad/game.dart';

class Solitario extends StatelessWidget {
  const Solitario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GameController gameController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("SOLITARIO"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(MODE);
              },
              icon: Icon(Icons.logout))
        ],
      ),
        body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
