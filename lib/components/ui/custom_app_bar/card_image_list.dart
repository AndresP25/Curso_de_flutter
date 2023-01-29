import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/custom_app_bar/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final cardImageList = Container(
      height: 350,

      child: ListView(

        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/river.jpg"),
          CardImage("assets/img/mountain.jpg"),
          CardImage("assets/img/beach_palm.jpg"),
          CardImage("assets/img/beach.jpg"),
          CardImage("assets/img/mountain_stars.jpg"),
          CardImage("assets/img/sunset.jpg")
        ],
      )
    );

    return cardImageList;
  }


}