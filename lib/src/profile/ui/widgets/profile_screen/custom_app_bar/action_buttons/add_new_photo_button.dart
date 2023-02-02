import 'package:flutter/material.dart';

class AddNewPhotoButton extends StatefulWidget{
  const AddNewPhotoButton({super.key});

  @override
  State<StatefulWidget> createState() {

    return _AddNewPhotoButton();
  }

}

class _AddNewPhotoButton extends State<AddNewPhotoButton> {

  void onPressedLogOutButton(){

    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content: const Text(
            "SOON... Add Photo",
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

    final addNewPhotoButton = FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: "Log Out",
        onPressed: onPressedLogOutButton,

        child:  const Icon(
            Icons.add_a_photo,
            color: Colors.deepPurple,
        )
    );
    return addNewPhotoButton;
  }


}