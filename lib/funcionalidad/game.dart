
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class GameController extends GetxController{
  var solitario = true.obs;
  var facil = false.obs;
  var normal = false.obs;
  var dificil = false.obs;
  RxList selectednumbers= [].obs;

// seleccion de modo
  void GameMode(bool solo){
    solitario.value = solo;
    if (solitario.value) {
      print("solitario");
    }
    else{
      print("versus");
    }
  }

// seleccion dificultad
  void prueba(){
    if (facil.value==true) {
      print("facil");
      print(normal.value);
      print(dificil.value);
    }
    if (normal.value==true) {
      print("normal");
      print(facil.value);
      print(dificil.value);
    }
    if (dificil.value==true) {
      print("dificil");
      print(facil.value);
      print(normal.value);
    }
  }

  void reset(){
    RxList selectednumbers = [].obs;
    print(selectednumbers);
  
  }

  
}




