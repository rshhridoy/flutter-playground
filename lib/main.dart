import 'package:flutter/material.dart';
import 'package:wscubetech/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Daffodil International University"),
            subtitle: Text('Sec: 60_C'),
          )
        ],
      ),
    );
  }
}
