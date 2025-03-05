import 'package:flutter/material.dart';

class Detailedpage extends StatelessWidget {
  const Detailedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Hero(
            tag: 'background',
            child: Image.asset(
                'assets/images/sabrina-carpenter-alan-walker-song.jpg')),
      ),
    );
  }
}
