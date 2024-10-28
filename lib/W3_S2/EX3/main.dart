import 'package:flutter/material.dart';

//i accidentally do EX4 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 200),
        color: Color(0xFFBBBBBB),
        child: Column(
          children: [
            card("OOP", Color.fromARGB(255, 159, 211, 254)),
            card("DART", Color.fromARGB(255, 93, 179, 248)),
            card("FLUTTER", Color.fromARGB(255, 47, 155, 244)),
          ],
        ),
      ),
    ));
  }

  Widget card(String title, Color? color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 44,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 159, 211, 254),
                color ?? Color.fromARGB(255, 159, 211, 254)
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        borderRadius: BorderRadius.circular(22),

      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, 
              fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
