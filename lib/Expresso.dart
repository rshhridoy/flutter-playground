import 'package:flutter/material.dart';
import 'package:wscubetech/StartingScreen.dart';

class Expresso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          "Expresso",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown),
                    children: [
                  TextSpan(
                      text: "Hello!!!, ",
                      style: TextStyle(fontSize: 25, color: Colors.teal[300])),
                  TextSpan(text: "This is "),
                  TextSpan(
                      text: "Sabrina Carpenter",
                      style: TextStyle(fontSize: 29, color: Colors.pinkAccent))
                ])),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.brown)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Startingscreen(),
                        ));
                  },
                  child: Text(
                    "Click Here to find Expresso!!!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Oswald"),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
