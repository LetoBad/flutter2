import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _cont = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nao sei se comito",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.auto_awesome),
          title: Text("♦♣ PokerApp ♠♥",),
          backgroundColor:Colors.lightGreenAccent,
        ),
        body: Center(
          child: 
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration( border: Border.all(
              color: Colors.black,
              width: 10
            ) ) ,
            child:Text('$_cont',
            style: TextStyle(
              fontSize: 150,
              color: Colors.black26
            ),)
            ),
        ), 
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.airplanemode_on,
          color:  const Color.fromARGB(255, 58, 208, 227),
          ),
          backgroundColor: const Color.fromARGB(255, 53, 58, 59),
          shape: const CircleBorder(),
          onPressed: () {
            setState(() {
              _cont = _cont + 1;
            });
            
            print(_cont);

          },
        ),
      ),
    );
  }
}
