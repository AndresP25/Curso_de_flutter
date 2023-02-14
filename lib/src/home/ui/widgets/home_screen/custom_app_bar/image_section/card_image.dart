import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/floating_action_button_favorite.dart';

import '../../../../../../common_used_widgets/card_image_generic.dart';

class CardImage extends StatelessWidget{

  String pathImage;

   CardImage (this.pathImage,{super.key});

  @override
  Widget build(BuildContext context) {

    final cardImageWithFavoriteButton = Stack(
      alignment: const Alignment(-0.03,1.15),
      children: [
        //cardImage,
        CardImageGeneric(
          network: true,
          pathImage: pathImage,
          height: 250,
          width: 250,
          top: 80,
          right: 20,
        ),

        const FloatingActionButtonFavorite()
      ],
    );

    return cardImageWithFavoriteButton;
  }


}