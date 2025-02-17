import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 254, 57, 57)),
        useMaterial3: true,
        textTheme: TextTheme(
            headlineLarge: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        )),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrNames = [
    'Hridoy',
    'Moon',
    'Sohan',
    'Shakib',
    'Niloy',
    'Mugdho',
    'Shadid',
    'Abid'
  ];

  var arrColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.transparent,
    Colors.indigo,
    Colors.purple,
    Colors.cyan
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Text(
            "Icons & Font Awesome Icons",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.play_circle_fill,
                size: 70,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 20,
                child: FaIcon(
                  FontAwesomeIcons.googleDrive,
                  color: Colors.redAccent,
                  size: 40,
                ),
              )
            ],
          ),
        ));
  }
}
