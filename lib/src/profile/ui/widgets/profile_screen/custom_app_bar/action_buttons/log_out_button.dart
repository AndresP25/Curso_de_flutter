import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';

class LogOutButton extends StatefulWidget{

  const LogOutButton({super.key});

  @override
  State<StatefulWidget> createState() {

    return _LogOutButton();
  }

}

class _LogOutButton extends State<LogOutButton> {

  ProfileBloc? profileBloc;

  void onPressedLogOutButton(){

    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content: const Text(
            "Time has come",
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

    profileBloc?.signOut();

  }

  @override
  Widget build(BuildContext context) {

    profileBloc = BlocProvider.of(context);

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