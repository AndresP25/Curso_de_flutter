import 'package:flutter/material.dart';

class ProfileCardImage extends StatelessWidget {

  ProfileCardImage(this.pathImage,{super.key});

  String pathImage;

  @override
  Widget build(BuildContext context) {

    final profileCardImage = Container(
      height: 250,
      width: 380,
      margin: const EdgeInsets.only(
        bottom: 80,

      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
            )

          ]
      ),
    );

    return profileCardImage;
  }


}