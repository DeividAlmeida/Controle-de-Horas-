import 'package:flutter/material.dart';
import 'package:controle_de_horas/home.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness:  Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Controle de Horas'
        ),
    );
  }
}

