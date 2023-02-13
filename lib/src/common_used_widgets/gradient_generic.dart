import 'package:flutter/material.dart';

class GradientGeneric extends StatelessWidget{

  double? height;

  GradientGeneric({this.height,super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    height ??= screenHeight; // contraccion de if height == null then height = screenHeight

    return Container (
      height: height,
      width: screenWidth,
      decoration: const BoxDecoration(
          gradient: LinearGradient (
            colors: [ //Va del tono mas clarito al mas oscuro
              Colors.blueAccent,
              Colors.greenAccent,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1, 1),
            //stops: [0.4,0.9],
              tileMode: TileMode.clamp
          )

      ),

      child:ClipRect( //Para recortar el gradiente hasta la parte del appbar


        child: FittedBox(
          fit: BoxFit.none,
          alignment: const Alignment(-1.5,-0.8),
          child: Container(

              width: screenHeight,
              height: screenHeight,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0,0,0,0.05),
                borderRadius: BorderRadius.circular(screenHeight/2),
              )
          )

        )
      )
      );

  }

}