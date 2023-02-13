import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/home/resources/model/place.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_body.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/profile_custom_app_bar.dart';

import '../../../common_used_widgets/gradient_generic.dart';

class UiProfile extends StatelessWidget{

  static Place ownPlace1 = Place(
      pId: "1",
      namePlace: "Netherlands",
      description: "Hermosos tulipanes",
      urlPlaceImage: "https://i.ibb.co/ZgbyhwC/tulipanes.jpg",
      userOwner: null
  );
  static Place ownPlace2 = Place(
      pId: "2",
      namePlace: "Paris",
      description: "Eiffel Tower",
      urlPlaceImage: "https://i.ibb.co/MM7htCS/paris.jpg",
      likes: 1200,
      userOwner: null
  );
  static Place ownPlace3 = Place(
      pId: "3",
      namePlace: "Japan",
      description: "Fuji Mount",
      urlPlaceImage: "https://i.ibb.co/WP2MXws/monte-fuji.jpg",
      likes: 300,
      userOwner: null
  );
  static const Map profileImage1 ={
    'pathImage': "assets/img/tulipanes.jpg",
    'nameDescription': "Netherlands",
    'description': "Hermosos tulipanes",
    'steps': 1000,
  };

  static const Map profileImage2 ={
    'pathImage': "assets/img/paris.jpg",
    'nameDescription': "Paris",
    'description': "Eiffel Tower",
    'steps': 1200,
  };

  static const Map profileImage3 ={
    'pathImage': "assets/img/monte_fuji.jpg",
    'nameDescription': "Japan",
    'description': "Fuji Mount",
    'steps': 300,
  };

  var listOfProfileImage = [ownPlace1,ownPlace2,ownPlace3];

  UiProfile({super.key});

  @override
  Widget build(BuildContext context) {

    final ui = Stack(
        children: [

          ProfileCustomAppBar(),
          ProfileBody(listOfProfileImage),

        ]
    );

    return ui;
  }
}