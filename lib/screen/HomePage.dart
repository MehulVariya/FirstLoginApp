import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        height: 500,
        alignment: Alignment.center,
        width: 200,
        child: const Text("Welcome back")
      ),
    );
  }
}
