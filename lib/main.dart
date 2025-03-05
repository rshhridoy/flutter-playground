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
  var arrNames = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Emma",
    "Fiona",
    "George",
    "Hannah",
    "Isaac",
    "Jack",
    "Katie",
    "Liam",
    "Mia",
    "Noah",
    "Olivia",
    "Peter",
    "Quinn",
    "Rachel",
    "Samuel",
    "Taylor"
  ];

  var arrDepartments = [
    "Computer Science",
    "Electrical Engineering",
    "Mechanical Engineering",
    "Civil Engineering",
    "Biotechnology",
    "Business Administration",
    "Mathematics",
    "Physics",
    "Chemistry",
    "Biology",
    "Economics",
    "Psychology",
    "Sociology",
    "Political Science",
    "History",
    "Philosophy",
    "Environmental Science",
    "Medicine",
    "Law",
    "Education"
  ];

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
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  "${index + 1}",
                  style: TextStyle(fontSize: 20),
                ),
                title: Text(arrNames[index]),
                subtitle: Text(arrDepartments[index]),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  height: 100,
                  thickness: 7,
                ),
            itemCount: arrNames.length));
  }
}
