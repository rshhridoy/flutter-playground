import 'package:flutter/material.dart';
import 'package:wscubetech/detailedPage.dart';

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
      home: MyHomePage(title: "Hero"),
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
  var namecontroller = TextEditingController();

  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            "Expresso",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detailedpage(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Hero(
                          tag: 'background',
                          child: Image.asset(
                              'assets/images/sabrina-carpenter-alan-walker-song.jpg')),
                    ),
                    Text(
                      "Sabrina Carpenter",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
