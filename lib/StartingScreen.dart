import 'package:flutter/material.dart';
import 'package:wscubetech/main.dart';

class Startingscreen extends StatelessWidget {
  const Startingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
