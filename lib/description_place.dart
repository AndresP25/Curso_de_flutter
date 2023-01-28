import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({super.key});


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

    final titleStar = Row(
      children: [

        Container(
            margin: const EdgeInsets.only(
                top:320.0,
                left: 20.0,
                right: 20.0
            ),

          child: const Text(
            "Duwili Ella",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),

        ),

        Row(
          children: [
            filledStar,
            filledStar,
            filledStar,
            filledStar,
            voidStar
          ],


          )
      ],
    );

    const descriptionDummy = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";

    final description = Container(

        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),

      child: const Text(
          descriptionDummy,
      )
    );

    final descriptionModule = Column(
      children: [
        titleStar,
        description,
      ],
    );

    return descriptionModule;
  }

}