import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_body.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/profile_custom_app_bar.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/profile_gradient_app_bar.dart';

class UiProfile extends StatelessWidget{

  static const pathOfProfileImage = "assets/img/Chony.jpg";
  static const userName = "Chonny";
  static const email = "Chonny@gmail.com";

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

  var listOfProfileImage = [profileImage1,profileImage2,profileImage3];

  @override
  Widget build(BuildContext context) {

    final ui = Stack(
        children: [

          const ProfileGradientAppBar(),
          ProfileBody(listOfProfileImage),

          ProfileCustomAppBar(pathOfProfileImage, userName, email),

        ]
    );

    return ui;
  }
}