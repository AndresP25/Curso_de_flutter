import 'package:flutter/material.dart';
import '../ui/body/description_place/description_place.dart';
import '../ui/body/review_place/review_place.dart';

class UI extends StatelessWidget {

  //Se usa static para asignar la variable del map a la lista,
  // para no poner [{},{}] directamente
  static const Map placeReview1 = {
    'imgPathToPhoto': "assets/img/Chony.jpg",
    'nameReviewer': "Chonny",
    'numberReviews': 1,
    'numberPhotos': 5,
    'rateStars': 3.6,
    'reviewDescription': "There is an amazing place in Sri Lanka"
  };

  static const Map placeReview2 ={
    'imgPathToPhoto': "assets/img/Milu.jpg",
    'nameReviewer': "Milu",
    'numberReviews': 3,
    'numberPhotos': 7,
    'rateStars': 4.8,
    'reviewDescription': "There is an amazing place in Colombia"
  };

  static const Map placeReview3 ={
    'imgPathToPhoto': "assets/img/Frankie.jpg",
    'nameReviewer': "Frankie",
    'numberReviews': 6,
    'numberPhotos': 2,
    'rateStars': 2.5,
    'reviewDescription': "There is an amazing place in Miami"
  };
  var listOfPlaceReviews = [placeReview1,placeReview2,placeReview3];

  String descriptionPlace = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";
  String imgPathToPhoto = "assets/img/Chony.jpg";
  String nameReviewer = "Chonny";
  String reviewDescription = "There is an amazing place in Sri Lanka";

  @override
  Widget build(BuildContext context) {

    final ui = Scaffold(

            appBar: AppBar(
                title: const Text("TravelPlatziApp")
            ),

            body: ListView(
              children: [

                DescriptionPlace("Duwili Ella",2.8, descriptionPlace ),

                ReviewPlace(listOfPlaceReviews)
              ],
            )

    );

    return ui;
  }

}