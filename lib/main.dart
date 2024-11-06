import 'package:flutter/material.dart';
// import 'package:lesson/W3_S2/EX1/main.dart';
// import 'package:lesson/W3_S2/EX2/main.dart';
//  import 'package:lesson/W3_S2/EX3/main.dart';
// import 'package:lesson/W4_S1/EX1/main.dart';
// import 'package:lesson/W4_S1/EX2/main.dart';
// import 'package:lesson/W4_S1/EX3/main.dart';
// import 'package:lesson/W4_S1/challenge/main.dart';
// import 'package:lesson/lessonOfThwDay/rolldice.dart';
// import 'package:lesson/lessonOfThwDay/discountCard.dart';
// import 'package:lesson/W4_S3/EX1/main.dart';
// import 'package:lesson/W4_S3/EX2/main.dart';
// import 'package:lesson/W4_S3/EX3/main.dart';
import 'package:lesson/W4_S3/challenge/main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


