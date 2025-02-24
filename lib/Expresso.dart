import 'package:flutter/material.dart';
import 'package:wscubetech/StartingScreen.dart';

class Expresso extends StatefulWidget {
  var nameFromHome;

  Expresso(this.nameFromHome, {super.key});

  @override
  State<Expresso> createState() => _ExpressoState();
}

class _ExpressoState extends State<Expresso> {
  Decoration _decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20), color: Colors.brown);

  var _height = 200.0;

  var _width = 150.0;

  bool _change = true;

  double cop = 1.0;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.bounceOut,
              decoration: _decoration,
              height: _height,
              width: _width,
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.brown),
                      children: [
                    TextSpan(
                        text: "Hello!!!, ",
                        style:
                            TextStyle(fontSize: 25, color: Colors.teal[300])),
                    TextSpan(
                        text: "${widget.nameFromHome}.  ",
                        style: TextStyle(
                            fontFamily: "Trajan Pro",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber)),
                    TextSpan(text: "This is "),
                    TextSpan(
                        text: "Sabrina Carpenter",
                        style:
                            TextStyle(fontSize: 29, color: Colors.pinkAccent))
                  ])),
            ),
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
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_change) {
                      _height = 150.0;
                      _width = 350.0;
                      _decoration = BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey);
                      _change = false;
                    } else {
                      _height = 200.0;
                      _width = 150.0;
                      _decoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                      );
                      _change = true;
                    }
                  });
                },
                child: Text("Change Resolution")),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: AnimatedOpacity(
                opacity: cop,
                duration: Duration(seconds: 2),
                curve: Curves.elasticInOut,
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.brown,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_change) {
                      cop = 0.0;
                      _change = false;
                    } else {
                      cop = 1.0;
                      _change = true;
                    }
                  });
                },
                child: Text("Close"))
          ],
        ),
      ),
    );
  }
}
