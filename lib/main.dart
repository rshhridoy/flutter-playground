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
      body: SizedBox(
        height: 1080,
        width: 500,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 200,
                  child: ListTile(
                    tileColor: Colors.redAccent,
                    leading: Text("${index + 1}"),
                    title: Text(arrNames[index]),
                    subtitle: Text(arrDept[index]),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Divider(
                  color: Colors.black45,
                  thickness: 4,
                ),
              ],
            );
          },
          itemCount: arrNames.length,
        ),
      ),
    );
  }
}
