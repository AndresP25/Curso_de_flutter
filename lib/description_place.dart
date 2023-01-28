import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  DescriptionPlace(this.namePlace, this.rateStars, this.descriptionText, {super.key} );

  //Variables from constructor
  String namePlace; //"Duwili Ella"
  double rateStars; // 4
  String descriptionText; // "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      final voidStar = Container(
          margin: const EdgeInsets.only(
            top: 320,
            right: 3.0,
          ),

          child: const Icon(
            Icons.star_border_outlined,
            color: Colors.grey,
          )

      );

      final halfFilledStar = Container(
          margin: const EdgeInsets.only(
            top: 320,
            right: 3.0,
          ),

          child: const Icon(
            Icons.star_half_outlined,
            color: Colors.amber,
          )
      );

      final filledStar = Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            right: 3.0,
          ),

          child: const Icon(
            Icons.star,
            color: Colors.amber,
          )

      );

      List<Widget> rateStarsWidget() {

          List<Widget> stars = []; //Create list for hold rate

          if (rateStars > 5){
            rateStars = 5;
          } else if (rateStars < 0){
            rateStars = 0;
          }
          int numberFilledStar = rateStars.floor();

          //loop for add filledStars
          for (int i = 0; i < numberFilledStar; i++) {
            stars.add(filledStar);
          }

          //conditional for add halfFilledStars
          if (rateStars - rateStars.floor() != 0) {
            stars.add(halfFilledStar);
          }

          //loop for add emptyStars
          for (int i = 0; i < 5 - numberFilledStar.ceil(); i++) {
            stars.add(voidStar);
          }

          //conditional for removing star excess
          if (stars.length > 5){
              stars.removeRange(5, stars.length) ;
          }

          return stars;

      }// Fill stars by Rate

      final titleStar = Row(
        children: [

          Container(
            margin: const EdgeInsets.only(
                top:320.0,
                left: 20.0,
                right: 20.0
            ),

            child: Text(
              namePlace,
              style: const TextStyle(
                fontSize: 40.0,

                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),

          ), //PLACE TEXT

          Row(
            children:
              rateStarsWidget(), //Without [] cause function already returns a list
          ),    // RATE STAR

          Container(
            margin: const EdgeInsets.only(
                top:320.0,
                left: 5.0
            ),

            child: Text(
              "$rateStars",
              style: const TextStyle(
                fontSize: 15,

                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.left,
            ),

          ), //RATE STARS TEXT
        ],
      );

      final description = Container(

          margin: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            descriptionText,
          )

      );  //DESCRIPTION TEXT

      final descriptionModule = Column(
          children: [
              titleStar,
              description,
          ],
      );

      return descriptionModule;

      }
  }
