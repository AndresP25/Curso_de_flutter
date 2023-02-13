import 'dart:core';

import 'package:flutter/material.dart';

class ActionButtonGeneric extends StatefulWidget{

  ActionButtonGeneric(
      {super.key,
        required this.onPressed,
        required this.heroTag,
        required this.icon,
        required this.mini,
        required this.tooltip,
        required this.snackbar,
        this.snackbarTextPressed,
      });

  final VoidCallback onPressed;
  final String heroTag;
  final IconData  icon;
  final bool mini;
  final String tooltip;
  final bool snackbar;
  String? snackbarTextPressed;


  @override
  State<StatefulWidget> createState() {

    return _ActionButtonGeneric();
  }

}

class _ActionButtonGeneric extends State<ActionButtonGeneric> {

  void onPressedButton(){

    if (widget.snackbar == true){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.snackbarTextPressed!,
              style: const TextStyle(
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

    widget.onPressed();


  }

  @override
  Widget build(BuildContext context) {

    final actionButtonGeneric = FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: widget.tooltip,
        heroTag: widget.heroTag,
        mini: widget.mini,
        onPressed: onPressedButton,

        child:  Icon(
           widget.icon,
          color: Colors.deepPurple,
        )
    );
    return actionButtonGeneric;
  }


}