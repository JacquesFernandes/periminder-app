import 'package:flutter/material.dart';

import './home/home.dart';

void main() {

  runApp(
    new MaterialApp(
      title: "Periminder",
      theme: new ThemeData(
        brightness: Brightness.light,
//        primaryColor: Colors.teal,
      primarySwatch: Colors.teal,
      ),
      home: new Home(),
    )
  );

}