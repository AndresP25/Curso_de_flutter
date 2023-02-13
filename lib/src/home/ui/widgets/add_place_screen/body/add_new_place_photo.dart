import 'package:flutter/material.dart';

import '../../../../../common_used_widgets/action_button_generic.dart';
import '../../../../../common_used_widgets/card_image_generic.dart';

class AddNewPlacePhoto extends StatelessWidget{
  final String? image;

  const AddNewPlacePhoto({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: const Alignment(0,1.15),
        children: [
          SizedBox(
              height: 260,
              child: Center(
                child: CardImageGeneric(
                  asset: true,
                  pathImage: image!,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  top: 0,
                  right: 50,
                  left: 50,
                ),
              )

          ),
          ActionButtonGeneric(
            onPressed: () { },
            heroTag: "Take a photo",
            icon: Icons.camera_alt,
            mini: true,
            tooltip: 'Take a photo',
            snackbar: false,
          )


        ]
    );
  }


}