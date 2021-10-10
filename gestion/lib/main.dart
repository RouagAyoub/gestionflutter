import 'package:flutter/material.dart';
import 'package:gestion/login/login.dart';
import 'package:gestion/rdv/rdvpage.dart';
import 'package:gestion/sidebare/sidebare.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sidebare(),
    );
  }
}
