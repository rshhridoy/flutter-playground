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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pic.jpg'),
                ),
              ),
              title: Text(arrNames[index],
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Colors.blueAccent)),
              subtitle: Text(
                "Dept of ${arrDept[index]}",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.amberAccent),
              ),
              trailing: Icon(Icons.call),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 50,
              thickness: 4,
            );
          },
        ),
      ),
    );
  }
}
