import 'package:flutter/material.dart';

class Detailedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Container(
        width: double.infinity,
        child: Hero(
            tag: 'background',
            child: Image.asset(
                'assets/images/sabrina-carpenter-alan-walker-song.jpg')),
      ),
    );
  }
}
