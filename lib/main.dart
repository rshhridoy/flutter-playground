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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 63, 254, 57)),
        useMaterial3: true,
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

  var arrNames= ['Shakil','Moon', 'Siam', 'Ovi'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("RootRaider"),
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 2, color: Colors.green),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 5,
                    color: Colors.green
                  )
                ]
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Expanded(
                      flex: 2,
                      child: Container(
                        height: 90,
                        width: 90,
                      
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Colors.green
                              
                            ),
                            
                          ],
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/pic.jpg"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Center(
                      child: 
                      Text("Hridoy", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),)),
                  ),
          
                  
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.green,
                          ),
                        ),
            
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
          )
        ],
      )
       
    );
  }
}
