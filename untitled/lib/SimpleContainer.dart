import 'package:flutter/material.dart';

class SimpleContainer extends StatelessWidget {
  const SimpleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
