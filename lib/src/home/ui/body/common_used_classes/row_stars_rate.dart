import 'package:flutter/material.dart';

class StarsRate extends StatelessWidget {

  StarsRate(this.rateStars, this.topValue, this.sizeValue, {super.key});

  double rateStars;
  double topValue;
  double sizeValue;

  @override
  Widget build(BuildContext context) {

    final voidStar = Container(
        margin: EdgeInsets.only(
          top: topValue,
          right: 3.0,
        ),

        child: Icon(
          Icons.star_border_outlined,
          size: sizeValue,
          color: Colors.grey,
        )

    );

    final halfFilledStar = Container(
        margin: EdgeInsets.only(
          top: topValue,
          right: 3.0,
        ),

        child: Icon(
          Icons.star_half_outlined,
          size: sizeValue,
          color: Colors.amber,
        )
    );

    final filledStar = Container(
        margin: EdgeInsets.only(
          top: topValue,
          right: 3.0,
        ),

        child: Icon(
          Icons.star,
          size: sizeValue,
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



