import 'package:flutter/material.dart';
import 'components/ui/u_i.dart';


void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UI(),

      );
  }
}

