import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/home/ui/body/description_place/navigate_button.dart';
import 'head_description.dart';

class DescriptionPlace extends StatelessWidget {

  DescriptionPlace(this.namePlace, this.rateStars, this.descriptionText, {super.key} );

  //Variables from constructor
  String namePlace; //"Duwili Ella"
  double rateStars; // 4
  String descriptionText; // "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor. Aenean massa.Cum sociis natoque penatibus et magnis dis parturient montes,nascetur ridiculus mus. Donec quam felis, ultricies nec,pellentesque eu,\n\nPretium quis, sem. Nulla consequat massa quis enim.Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.In enim justo, rhoncus ut, imperdiet a.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              HeadDescription(namePlace,rateStars),

              description,
              NavigateButton("Navigate"),
          ],
      );

      return descriptionModule;

      }
  }
