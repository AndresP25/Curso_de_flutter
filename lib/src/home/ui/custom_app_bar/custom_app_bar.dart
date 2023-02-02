import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/container_background.dart';
import '../custom_app_bar/image_section/card_image_list.dart';

class CustomAppBar extends StatelessWidget {

  List listOfPathImages;

  CustomAppBar(this.listOfPathImages, {super.key});

  @override
  Widget build(BuildContext context) {

    final appBar = Stack(
      children: [

        ContainerBackground(250,"popular"),
        CardImageList(listOfPathImages),
      ],
    );
    return appBar;
  }


}