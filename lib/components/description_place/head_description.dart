import 'package:flutter/material.dart';
import 'stars_rate.dart';

class HeadDescription extends StatelessWidget {

  HeadDescription(this.namePlace, this.rateStars, {super.key});

  String namePlace;
  double rateStars;

  @override
  Widget build(BuildContext context) {

    final headDescription = Row(
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
              fontFamily: "Lato",
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),

        ), //PLACE TEXT

        StarsRate(rateStars),    // RATE STAR

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

    return headDescription;
  }

}