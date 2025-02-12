import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("RootRaider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Current Time: ${DateFormat('jms').format(dateTime)}, Current Date:${DateFormat('d E,y').format(dateTime)}',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Show Current DateTime"))
          ],
        ));
  }
}
