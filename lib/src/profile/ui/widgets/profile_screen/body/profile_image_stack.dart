import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/card_image_generic.dart';
import 'package:platzi_trips_app/src/common_used_widgets/floating_action_button_favorite.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_card_image.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_image_description.dart';

class ProfileImageStack extends StatelessWidget{

  String urlPlaceImage;
  String namePlace;
  String description;
  int likes;

  ProfileImageStack( {
    required this.namePlace,
    required this.description,
    required this.urlPlaceImage,
    required this.likes,
    super.key});

  @override
  Widget build(BuildContext context) {

    final auxStack = Stack(
      alignment: const Alignment(0.95,0.8),
      children: [

        ProfileImageDescription(namePlace, description, likes),
        const FloatingActionButtonFavorite()
      ],
    );

    final profileImageStack = Stack(
      alignment: const Alignment(0,0.75),
      children: [
        //ProfileCardImage(urlPlaceImage),
        CardImageGeneric(
            network: true,
            pathImage: urlPlaceImage,
            height: 250,
            width: 380,
            bottom: 80,
        ),
        auxStack
      ],
    );


    return profileImageStack;
  }


}