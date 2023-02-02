import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/container_background.dart';
import 'package:platzi_trips_app/src/common_used_widgets/pretty_inkwell_button.dart';

class UiSingIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _UiSingIn();
  }

}

class _UiSingIn extends State<UiSingIn>{

  @override
  Widget build(BuildContext context) {

    return uiSignIn;
  }

  Widget uiSignIn = Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: [
        ContainerBackground(double.infinity),

        Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(

                width: 250,
                child: const Text(
                  "Welcome to your Trips App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),

                ),
              ),

              const SizedBox(height: 30),

              PrettyInkWellButton(
                  onPressed: (){},
                  textOfFilledButton: 'Log In with Google',
                  height: 50,
                  width: 250)
              /*
              const FilledButton(
                  onPressed: null,
                  child: Text(
                      'Sign In with Google',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                  )
              ),

               */
            ],
        ),

      ],
    ),
  );
}