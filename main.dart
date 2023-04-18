import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/app.dart';
import 'funcionalidad/game.dart';

void main() {
  Get.put(GameController());
  runApp(const App());
}
