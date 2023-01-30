import 'package:flutter/material.dart';

class FloatingActionButtonFavorite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _FloatingActionButtonFavorite();
  }

}
class _FloatingActionButtonFavorite extends State<FloatingActionButtonFavorite>{

  static bool _pressed = false;

  void onPressedFavoriteButton(){

    setState(() {
      _pressed = !_pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content: _pressed ?
            const Text(
              "It's now a favorite place",
              style: TextStyle(
                fontSize:15.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            )
            :
            const Text(
              "Not a favorite place anymore",
              style: TextStyle(
                fontSize:15.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),

          duration: const Duration(milliseconds: 2000),

          width: 300.0, // Width of the SnackBar.
          padding: const EdgeInsets.all( 8 ),

          behavior: SnackBarBehavior.floating,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        )

    );
  }

  @override
  Widget build(BuildContext context) {

    final floatingActionButtonFavorite = FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        mini: true,
        tooltip: "Favorite",//si se posiciona encima
        onPressed: onPressedFavoriteButton, //a pesar de que es un metodo no lleva parentesis
        child:  Icon(
            _pressed ? Icons.favorite: Icons.favorite_border
        )
    );

    return floatingActionButtonFavorite;
  }
  
}