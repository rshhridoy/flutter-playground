import 'package:flutter/material.dart';

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
          title: Text("Custom Widget"),
        ),
        body: Container(
          height: 300,
          width: 300,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.grey,
              ),
              Positioned(
                left: 40,
                top: 40,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.yellow, boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 7,
                        spreadRadius: 8,
                        blurStyle: BlurStyle.outer)
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
