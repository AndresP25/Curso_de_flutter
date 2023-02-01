import 'package:flutter/material.dart';

class LogOutButton extends StatefulWidget{
  const LogOutButton({super.key});

  @override
  State<StatefulWidget> createState() {

    return _LogOutButton();
  }

}

class _LogOutButton extends State<LogOutButton> {

  void onPressedLogOutButton(){

    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content: const Text(
            "SOON... Log Out",
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

    final logOutButton = FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: "Log Out",
        mini:true,

        onPressed: onPressedLogOutButton,
        child:  const Icon(
            Icons.logout,
            color: Colors.deepPurple,
        )
    );
    return logOutButton;
  }


}