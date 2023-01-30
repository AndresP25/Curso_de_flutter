import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/custom_app_bar/floating_action_button_favorite.dart';

class CardImage extends StatelessWidget{

  String pathImage;

  CardImage (this.pathImage,{super.key});

  @override
  Widget build(BuildContext context) {

    final cardImage = Container (

      height: 250.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80,
        right: 20,

      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0,7)
          )

        ]
      ),
    );

    final cardImageWithFavoriteButton = Stack(
      alignment: const Alignment(-0.03,1.1),
      children: [
        cardImage,

        FloatingActionButtonFavorite()
      ],
    );

    return cardImageWithFavoriteButton;
  }


}