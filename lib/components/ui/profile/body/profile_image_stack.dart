import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/common_used_clases/floating_action_button_favorite.dart';
import 'package:platzi_trips_app/components/ui/profile/body/profile_card_image.dart';
import 'package:platzi_trips_app/components/ui/profile/body/profile_image_description.dart';

class ProfileImageStack extends StatelessWidget{

  String pathImage;
  String nameDescription;
  String description;
  int steps;

  ProfileImageStack(this.pathImage, this.nameDescription, this.description, this.steps,{super.key});

  @override
  Widget build(BuildContext context) {

    final auxStack = Stack(
      alignment: const Alignment(0.95,0.8),
      children: [

        ProfileImageDescription(nameDescription, description, steps),
        const FloatingActionButtonFavorite()
      ],
    );

    final profileImageStack = Stack(
      alignment: const Alignment(0,0.75),
      children: [
        ProfileCardImage(pathImage),
        auxStack
      ],
    );


    return profileImageStack;
  }


}