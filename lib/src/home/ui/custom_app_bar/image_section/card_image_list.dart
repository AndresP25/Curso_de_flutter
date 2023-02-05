import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  List listOfPathImages;

  CardImageList(this.listOfPathImages, {super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> cardImageListConstructor(){

      List<Widget> cardImageList = [];

      for (int i = 0; i < listOfPathImages.length; i++){
        cardImageList.add(
            CardImage(listOfPathImages[i])
        );
      }

      return cardImageList;
    }

    final cardImageList = SizedBox(
      height: 350,

      child: ListView(

        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,

        children: cardImageListConstructor(),

      )
    );

    return cardImageList;
  }


}