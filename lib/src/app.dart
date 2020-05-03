
import 'package:flutter/material.dart';

import 'package:contador/src/pages/counter_page.dart';
//import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override //Sobrescribimos el metodo build de Stalesswidget
  Widget build( context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child:
          CounterPage()
          )
    );
  }

}