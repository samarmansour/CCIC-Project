
import 'package:flutter/material.dart';
import 'package:taskes_project/login.dart';



void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Screen(),
    );
  }
}