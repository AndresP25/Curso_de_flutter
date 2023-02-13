import 'package:flutter/material.dart';

class ImagePlace extends StatelessWidget {

  String imgPathToPhoto;

  ImagePlace(this.imgPathToPhoto, {super.key} );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Forma 1... larga
    final photo = Container(

      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              imgPathToPhoto
          ),
        ),
      )  ,
    );

    //Forma 2.. corta
    final avatar = Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(
          top: 20,
          left: 20
      ),
      child: CircleAvatar(
        //
        backgroundImage: AssetImage(
            imgPathToPhoto
        ),
      ),
    );

    return avatar;
  }


}
