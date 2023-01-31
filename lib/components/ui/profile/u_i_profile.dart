import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/profile/custom_app_bar/profile_custom_app_bar.dart';
import 'package:platzi_trips_app/components/ui/profile/custom_app_bar/profile_gradient_app_bar.dart';

class UiProfile extends StatelessWidget{

  static const pathOfProfileImage = "assets/img/Chony.jpg";
  static const userName = "Chonny";
  static const email = "Chonny@gmail.com";

  @override
  Widget build(BuildContext context) {

    final ui = Stack(
        children: [
          const GradientAppBar(),

          CustomAppBar(pathOfProfileImage,userName,email),
        ]
    );

    return ui;
  }
}