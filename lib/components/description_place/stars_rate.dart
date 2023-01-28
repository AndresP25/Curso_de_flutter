import 'package:flutter/material.dart';

class StarsRate extends StatelessWidget {

  StarsRate(this.rateStars, {super.key});

  double rateStars;

  @override
  Widget build(BuildContext context) {

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

    final starsRow = Row (
      children: rateStarsWidget(), //Without [] cause function already returns a list
    );

    return starsRow;
  }
}



