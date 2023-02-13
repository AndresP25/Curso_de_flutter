import 'package:flutter/material.dart';

class SavedFavoritePlacesButton extends StatefulWidget{
  const SavedFavoritePlacesButton({super.key});

  @override
  State<StatefulWidget> createState() {

    return _SavedFavoritePlacesButton();
  }

}

class _SavedFavoritePlacesButton extends State<SavedFavoritePlacesButton> {

  static bool _pressed = false;

  void onPressedSavedFavoritePlacesButton(){
    setState(() {
      _pressed = !_pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content: _pressed ?
          const Text(
            "SOON... The saved favorite places are being displayed",
            style: TextStyle(
              fontSize:15.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          )
              :
          const Text(
            "SOON... Saved favorite places are no longer displayed",
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

    final savedFavoritePlacesButton = FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: "Saved favorite places",
        mini:true,
        onPressed: onPressedSavedFavoritePlacesButton,
        heroTag: null,
        child:  Icon(
            _pressed ? Icons.bookmark: Icons.bookmark_border,
          color: Colors.deepPurple,
        )
    );
    return savedFavoritePlacesButton;
  }


}