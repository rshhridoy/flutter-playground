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
  var arrContacts = {
    1: {"name": "Alice", "mobileNo": "1234567890", "unread": 5},
    2: {"name": "Bob", "mobileNo": "2345678901", "unread": 2},
    3: {"name": "Charlie", "mobileNo": "3456789012", "unread": 0},
    4: {"name": "David", "mobileNo": "4567890123", "unread": 7},
    5: {"name": "Eve", "mobileNo": "5678901234", "unread": 1},
    6: {"name": "Frank", "mobileNo": "6789012345", "unread": 3},
    7: {"name": "Grace", "mobileNo": "7890123456", "unread": 0},
    8: {"name": "Hannah", "mobileNo": "8901234567", "unread": 6},
    9: {"name": "Isaac", "mobileNo": "9012345678", "unread": 4},
    10: {"name": "Jack", "mobileNo": "0123456789", "unread": 0},
    11: {"name": "Karen", "mobileNo": "1112223333", "unread": 2},
    12: {"name": "Leo", "mobileNo": "2223334444", "unread": 9},
    13: {"name": "Mia", "mobileNo": "3334445555", "unread": 0},
    14: {"name": "Noah", "mobileNo": "4445556666", "unread": 8},
    15: {"name": "Olivia", "mobileNo": "5556667777", "unread": 3},
    16: {"name": "Paul", "mobileNo": "6667778888", "unread": 0},
    17: {"name": "Quinn", "mobileNo": "7778889999", "unread": 5},
    18: {"name": "Ryan", "mobileNo": "8889990000", "unread": 1},
    19: {"name": "Sophia", "mobileNo": "9990001111", "unread": 4},
    20: {"name": "Tom", "mobileNo": "0001112222", "unread": 0},
  };

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
        body: ListView(
            children: arrContacts.values.map((value) {
          return ListTile(
            leading: Icon(Icons.account_circle_sharp),
            title: Text(value["name"].toString()),
            subtitle: Text(value["mobileNo"].toString()),
            trailing: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.redAccent,
                child: Text(
                  value["unread"].toString(),
                )),
          );
        }).toList()));
  }
}
