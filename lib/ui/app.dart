import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../funcionalidad/game.dart';
import '../funcionalidad/juego.dart';
import 'pages/level.dart';
import 'pages/mode.dart';
import 'pages/solitario.dart';
import 'pages/versus.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MODE,
      getPages: [
        GetPage(name: MODE, page: () => Mode()),
        GetPage(name: LEVEL, page: () => Level()),
        GetPage(name: JUEGO, page: () => Juego()),
        GetPage(name: SOLITARIO, page: () => Solitario()),
        GetPage(name: VERSUS, page: () => Versus()),
      ],
      initialBinding: BindingsBuilder(() {
      Get.lazyPut(() => GameController());
      }),
    );
  }
}
