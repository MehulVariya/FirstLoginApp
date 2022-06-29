import 'package:flutter/material.dart';
import 'package:login/screen/HomePage.dart';
import 'package:login/screen/LoginPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      home: LoginPage(),
       routes: {
         "/home" : (context) => HomePage(),
       },
    );
  }
}

