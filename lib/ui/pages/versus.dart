import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jueves/constants.dart';
import '../../funcionalidad/game.dart';
import '../../funcionalidad/numbers.dart';


class Versus extends StatelessWidget {
  const Versus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController gameController = Get.find();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Versus"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(MODE);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Seleccione los números:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Obx(() => Text('${gameController.selectednumbers.value}',       
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: Numbers(),
              ),
            ),
            ElevatedButton(onPressed: (){ gameController.reset();},
             child: Text("Repetir selección"),
             ),
            ElevatedButton(onPressed: (){ Get.toNamed(MODE);},
             child: Text("Jugar"),
             ),
          ],
        ),
),


    );
  }
}
