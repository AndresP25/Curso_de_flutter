import 'package:flutter/material.dart';
import 'components/ui/body/description_place/description_place.dart';
import 'components/ui/body/review_place/review_place.dart';

void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String descriptionPlace = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";
  String imgPathToPhoto = "assets/img/Chony.jpg";
  String nameReviewer = "Chonny";
  String reviewDescription = "There is an amazing place in Sri Lanka";


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

        body: ListView(
          children: [

            DescriptionPlace("Duwili Ella",2.8, descriptionPlace ),

            ReviewPlace(imgPathToPhoto,nameReviewer,1,5,3.6,reviewDescription)
          ],
        )


        )

      );
  }
}

