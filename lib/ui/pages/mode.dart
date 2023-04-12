import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../funcionalidad/game.dart';

class Mode extends StatefulWidget {
  const Mode({Key? key}) : super(key: key);


  @override
  _ModeState createState() => _ModeState();

}

class _ModeState extends State<Mode>{

  Widget build(BuildContext context) {
     GameController gameController = Get.find();

     
    return Scaffold(
      appBar: AppBar(
        title: Text("Mode"),
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
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    gameController.GameMode(true);
                  });
                  Get.toNamed(LEVEL);
                },
                child: Text("Modo Solitario")),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    gameController.GameMode(false);
                  });
                  Get.toNamed(LEVEL);
                },
                child: Text("Modo Versus")),
          ],
        ),
      ),
    );
  }
}


