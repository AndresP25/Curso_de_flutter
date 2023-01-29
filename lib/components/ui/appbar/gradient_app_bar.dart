import 'package:flutter/material.dart';

class GradientAppBarr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final gradient = Container (
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient (
          colors: [ //Va del tono mas clarito al mas oscuro
            Colors.lightBlueAccent,

            Colors.greenAccent,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1, 1),
          stops: [0.4,0.9],
        )
      )

    );

    return gradient;
  }
}