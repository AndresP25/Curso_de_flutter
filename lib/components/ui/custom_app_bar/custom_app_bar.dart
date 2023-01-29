import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/custom_app_bar/card_image_list.dart';
import 'package:platzi_trips_app/components/ui/custom_app_bar/gradient_app_bar.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final appBar = Stack(
      children: [

        GradientAppBarr("Popular"),
        CardImageList(),
      ],
    );
    return appBar;
  }


}