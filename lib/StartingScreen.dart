import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wscubetech/main.dart';

class Startingscreen extends StatefulWidget {
  const Startingscreen({super.key});

  @override
  State<Startingscreen> createState() => _StartingscreenState();
}

class _StartingscreenState extends State<Startingscreen> {
  bool cfade = true;

  @override
  void reload() {
    setState(() {
      if (cfade) {
        cfade = false;
      } else {
        cfade = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstCurve: Curves.bounceOut,
                secondCurve: Easing.linear,
                sizeCurve: Curves.decelerate,
                reverseDuration: Duration(seconds: 1),
                firstChild: Image.asset(
                    "assets/images/sabrina-carpenter-alan-walker-song.jpg"),
                secondChild: Image.asset("assets/images/pic.jpg"),
                crossFadeState: cfade
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 4)),
            ElevatedButton(
                onPressed: () {
                  reload();
                },
                child: Text("Change")),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[300]),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.teal[200])),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            title: "Expresso",
                          ),
                        ));
                  },
                  child: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                    size: 40,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
