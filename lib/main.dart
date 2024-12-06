import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      title: Text('Ask me Anything'),
  ),
  body:MYDICEAPP()
      ),
  ),
  );
}
class MYDICEAPP extends StatefulWidget {
  const MYDICEAPP({Key? key}) : super(key: key);

  @override
  State<MYDICEAPP> createState() => _MYDICEAPPState();
}

class _MYDICEAPPState extends State<MYDICEAPP> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            number = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('image/ball$number.png'),
      ),


    );
  }


}