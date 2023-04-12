import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'game.dart';

List<Widget> Numbers() {
  GameController gameController = Get.find();
  List<Widget> num = [];

  for (int i = 0; i < 10; i++) {
    num.add(ElevatedButton(
      onPressed: () {
        if (gameController.facil.value==true) {
          if (gameController.selectednumbers.length<3) {
            gameController.selectednumbers.add(i);
            print("a");
            print(gameController.selectednumbers.length<3);
            print(gameController.selectednumbers);
          }
          
        } else if (gameController.normal.value==true) {
           if (gameController.selectednumbers.length<4) {
              gameController.selectednumbers.add(i);
              print("b");
              print(gameController.selectednumbers.length<4);
            print(gameController.selectednumbers);
            }
              
         } else if (gameController.dificil.value==true){
            if (gameController.selectednumbers.length<5) {
              gameController.selectednumbers.add(i);
              print("c");
              print(gameController.selectednumbers.length<5);
            print(gameController.selectednumbers);
              }
              
            }
          },
          child: Text(i.toString()),
        ));
      }
    return num;
    } 
