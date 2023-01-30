import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_app_bar.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final appBar = Stack(
      children: [

        GradientAppBarr("Popular"),
        const CardImageList(),
      ],
    );
    return appBar;
  }


}