import 'package:flutter/material.dart';
import 'components/description_place/description_place.dart';

void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String descriptionPlace = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TravelPlatziApp")
        ),

        body: DescriptionPlace("Duwili Ella",3.1, descriptionPlace ),

        )

      );
  }
}

