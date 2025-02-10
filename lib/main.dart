import 'package:flutter/material.dart';
import 'package:wscubetech/style/style.dart';

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
            seedColor: const Color.fromARGB(255, 63, 254, 57)),
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
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Hridoy', 'Ovi', 'Moon', 'Protik', 'Siam', 'Sujoy'];
    var arrDept = ['CSE', 'CSE', 'SWE', 'BOKACHODA', 'ACCOUNTING', 'MEDICAL'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("RootRaider"),
        ),
        body: Container(
          height: 1080,
          width: 500,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Text(
                        arrNames[index],
                        style: customfont(),
                      )));
            },
            itemCount: arrNames.length,
          ),
        ));
  }
}
