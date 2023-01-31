import 'package:flutter/material.dart';
import '../home/body/description_place/description_place.dart';
import '../home/body/review_place/review_place.dart';
import '../home/custom_app_bar/custom_app_bar.dart';

class UiHome extends StatelessWidget {

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
    'numberPhotos': 1,
    'rateStars': 2.5,
    'reviewDescription': "There is an amazing place in Miami"
  };

  static const Map placeReview4 ={
    'imgPathToPhoto': "assets/img/Pecas.jpg",
    'nameReviewer': "Pecas",
    'numberReviews': 2,
    'numberPhotos': 4,
    'rateStars': 0.5,
    'reviewDescription': "There is an amazing place in londres"
  };

  static const List listOfPathImagesAppBarr = [
    "assets/img/river.jpg",
    "assets/img/mountain.jpg",
    "assets/img/beach_palm.jpg",
    "assets/img/beach.jpg",
    "assets/img/mountain_stars.jpg",
    "assets/img/sunset.jpg",
    "assets/img/frost_mountain.jpg"
  ];

  var listOfPlaceReviews = [placeReview1,placeReview2,placeReview3,placeReview4];

  String descriptionPlace = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";

  UiHome({super.key});

  @override
  Widget build(BuildContext context) {

    final ui =  Stack(
              children: [

                ListView(
                    children: [

                      DescriptionPlace("Duwili Ella",3.5, descriptionPlace ),

                      ReviewPlace(listOfPlaceReviews)
                    ]
                ),
                CustomAppBar(listOfPathImagesAppBarr),
              ],



    );

    return ui;
  }

}