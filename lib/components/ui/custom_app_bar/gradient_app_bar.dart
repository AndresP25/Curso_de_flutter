import 'package:flutter/material.dart';

class GradientAppBarr extends StatelessWidget{

  String appBarrText;

  GradientAppBarr(
      this.appBarrText,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {

    final gradient = Container (
        height: 250.0,

        decoration: const BoxDecoration(
          gradient: LinearGradient (
            colors: [ //Va del tono mas clarito al mas oscuro
              Colors.blueAccent,

              Colors.green,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1, 1),
            stops: [0.4,0.9],
          )
        ),

        alignment: const Alignment(-0.84,-0.6),

        child: Text(
            appBarrText,

            style: const TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
        ),
    );

    return gradient;
  }
}