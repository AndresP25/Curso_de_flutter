import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/gradient_generic.dart';
import '../../../../../common_used_widgets/title_appbar_generic.dart';
import '../custom_app_bar/image_section/card_image_list.dart';

class HomeCustomAppBar extends StatelessWidget {

  List listOfPathImages;

  HomeCustomAppBar(this.listOfPathImages, {super.key});

  @override
  Widget build(BuildContext context) {

    final appBar = Stack(
      children: [

        GradientGeneric(height: 250.0),

        TitleAppBarGeneric(
          appBarText: "Popular",
          top:41,
          left:21.5
          ),

        CardImageList(listOfPathImages),
      ],
    );
    return appBar;
  }


}