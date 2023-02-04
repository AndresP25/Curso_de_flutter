import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/container_background.dart';
import 'package:platzi_trips_app/src/common_used_widgets/pretty_inkwell_button.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/src/ui_platzi_trips/platzi_trips.dart';

class UiSingIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UiSingIn();
  }
}

class _UiSingIn extends State<UiSingIn> {

  //bloc es instanciado como un singleTon, solo se puede instanciar una vez
  //para llamar el bloc se debe traer  libreria bloc provider
  //y llamar el bloc desde
  ProfileBloc? profileBloc;
  
  @override
  Widget build(BuildContext context) {
    profileBloc = BlocProvider.of(context); //asi se instancia el bloc

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){

    return StreamBuilder(
        stream: profileBloc?.authStatus, //Solicitamos conocer el estatus de la sesion de Firebase

        builder: (BuildContext context, AsyncSnapshot snapshot){
          //snapshot contiene la data del objeto user traido desde firebase
          if (!snapshot.hasData || snapshot.hasError){
            return uiSingIn(); //Si no hay datos en User pide que se autentique
          }
          else{
            //Si hay datos de Usuario autenticado pasa a la pantalla principal de la app de viajes
            return const PlatziTrips();
          }
        }
    );
  }
  
  Widget uiSingIn(){
    return Scaffold(
      body: Stack(

        alignment: Alignment.center,

        children: [

          ContainerBackground(double.infinity),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const SizedBox(
                width: 250,
                child: Text(
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
                  onPressed: () {
                    profileBloc?.signIn().then((UserCredential? user) => print("El usuario es ${user?.user}"));
                    },

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
}
