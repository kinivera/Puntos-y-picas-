import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../funcionalidad/game.dart';

class Level extends StatefulWidget {
  const Level({Key? key}) : super(key: key);

  @override
  _LevelState createState() => _LevelState();

}

class _LevelState extends State<Level>{
  
  Widget build(BuildContext context) {
    GameController gameController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("Level"),
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
                    gameController.facil.value=true;
                    gameController.normal.value=false;
                    gameController.dificil.value=false;
                    gameController.prueba();

                  });
                  if (gameController.solitario.value==true) {
                    Get.toNamed(SOLITARIO);
                  } else {
                    Get.toNamed(VERSUS);
                  }
                  
                },
                child: Text("Fácil")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    gameController.facil.value=false;
                    gameController.normal.value=true;
                    gameController.dificil.value=false;
                    gameController.prueba();
                  });
                  if (gameController.solitario.value==true) {
                    Get.toNamed(SOLITARIO);
                  } else {
                    Get.toNamed(VERSUS);
                  }
                },
                child: Text("Normal")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    gameController.facil.value=false;
                    gameController.normal.value=false;
                    gameController.dificil.value=true;
                    gameController.prueba();
                  });
                  if (gameController.solitario.value==true) {
                    Get.toNamed(SOLITARIO);
                  } else {
                    Get.toNamed(VERSUS);
                  }
                },
                child: Text("Difícil")),
          ],
        ),
      ),
    );
  }
}
