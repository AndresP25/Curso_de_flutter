import 'package:flutter/material.dart';

class ProfileGradientAppBar extends StatelessWidget{

  const ProfileGradientAppBar(
      {super.key}
      );

  @override
  Widget build(BuildContext context) {

    final gradient = Container (
      height: 400.0,

      decoration: const BoxDecoration(
          gradient: LinearGradient (
            colors: [ //Va del tono mas clarito al mas oscuro
              Colors.blueAccent,
              Colors.greenAccent,
            ],
            begin: FractionalOffset(0,0),
            end: FractionalOffset(1,1),
            //stops: [0.4,0.9],
         )
      ),

    );

    return gradient;
  }
}