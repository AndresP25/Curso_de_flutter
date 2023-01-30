import 'package:flutter/material.dart';
import '../custom_app_bar/image_section/card_image_list.dart';
import 'gradient_app_bar.dart';

class CustomAppBar extends StatelessWidget {

  List listOfPathImages;

  CustomAppBar(this.listOfPathImages, {super.key});

  @override
  Widget build(BuildContext context) {

    final appBar = Stack(
      children: [

        GradientAppBarr("Popular"),
        CardImageList(listOfPathImages),
      ],
    );
    return appBar;
  }


}