import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var images = [
    'image/one.jpg',
    'image/two.jpg',
    'image/three.jpg',
    'image/four.jpg',
    'image/five.jpg',
    'image/six.jpg'
  ];
  var initialImage = 'image/one.jpg';
  randomimage() {
    var ran = Random().nextInt(images.length);
    setState(() {
      initialImage = images[ran];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Container(
                child: Expanded(
              child: FlatButton(
                onPressed: () => randomimage(),
                child: Image.asset(initialImage),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
