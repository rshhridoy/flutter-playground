import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wscubetech/main.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 200,
          child: Column(
            children: [
              Image.asset('assets/images/pic.jpg'),
              SizedBox(
                height: 11,
              ),
              Text(
                "Md. Hridoy",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
