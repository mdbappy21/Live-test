import 'package:flutter/material.dart';
import 'HomeActivity.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:"Live Test" ,
        theme: ThemeData(primarySwatch: Colors.grey),
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}