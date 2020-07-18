import 'package:flutter/material.dart';
import 'package:player_test/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
