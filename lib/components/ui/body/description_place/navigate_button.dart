import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {

  String buttonText;

  NavigateButton(this.buttonText,{super.key});

  @override
  Widget build(BuildContext context) {

    final navigateButton = InkWell(

      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(
                content: const Text(
                    'Good Luck',
                    style: TextStyle(
                      fontSize:15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,

                    ),
                  textAlign: TextAlign.center,
                ),

                duration: const Duration(milliseconds: 2000),


                width: 100.0, // Width of the SnackBar.
                padding: const EdgeInsets.all( 8 ),

                behavior: SnackBarBehavior.floating,


              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          bottom: 10
        ),
        height: 50,
        width: 180,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1,1)
          ),

        ),

        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );


    return navigateButton;
  }

}