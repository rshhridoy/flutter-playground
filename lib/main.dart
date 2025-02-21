import 'package:flutter/material.dart';
import 'package:wscubetech/Expresso.dart';
import 'package:wscubetech/splashScreen.dart';
import 'package:wscubetech/widets/rectengular_button.dart';

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
      home: Splashscreen(),
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
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            "Expresso",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 350),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 350),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              RectengularButton(
                btnName: "  Login",
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                callback: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Expresso(namecontroller.text.toString()),
                    )),
                icon: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(60),
                child: RangeSlider(
                    values: values,
                    labels: labels,
                    divisions: 10,
                    onChanged: (newvalue) {
                      values = newvalue;
                      setState(() {
                        values = newvalue;
                      });
                    }),
              )
            ],
          ),
        ));
  }
}
