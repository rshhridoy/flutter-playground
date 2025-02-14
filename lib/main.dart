import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  var emailBox = TextEditingController();
  var passBox = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("RootRaider"),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 31),
                        child: Container(
                          height: 50,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 41),
                    child: TextField(
                      controller: emailBox,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(width: 2))),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: passBox,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(width: 4))),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.redAccent)),
                      onPressed: () {
                        String uemail = emailBox.text.toString();
                        String upass = passBox.text.toString();

                        print("Email: $uemail & Pass:$upass");
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(""),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.pinkAccent)),
                            onPressed: () async {
                              DateTime? date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2030));
                            },
                            child: Text(
                              "Pick Date",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
