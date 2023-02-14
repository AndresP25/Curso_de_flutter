import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/home/ui/widgets/add_place_screen/body/body_add_place_screen.dart';
import 'package:platzi_trips_app/src/home/ui/widgets/add_place_screen/custom_app_bar/add_place_custom_appbar.dart';

class UiAddPlace extends StatefulWidget{

  const UiAddPlace({ super.key});

  @override
  State<StatefulWidget> createState() {
    return _UiAddPlace();
  }

}

class _UiAddPlace extends State<UiAddPlace> {

  @override
  Widget build(BuildContext context) {

    final uiAddPlace = Scaffold(
      body: Stack(
          children:[

            const AddPlaceCustomAppBar(),
            BodyAddPlaceScreen(),
          ]
      )
    );

    return uiAddPlace;
  }
}