import 'package:firebase_core/firebase_core.dart';
import 'package:platzi_trips_app/src/profile/ui/screens/u_i_sign_in.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';
import 'package:platzi_trips_app/src/ui_platzi_trips/platzi_trips_cupertino.dart';
import 'package:platzi_trips_app/src/ui_platzi_trips/platzi_trips.dart';

void main() async{

  //Conecta con firebase... no cambiar
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //Para esconder la barra superior del cel
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    //Para poner de color transparente la barra
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light
        )
    );



    return  BlocProvider(

      bloc: ProfileBloc(),

        child:  MaterialApp(
          title: 'PlatziTrips',

          home: UiSingIn(),//PlatziTrips(),

        )

    );
  }
}

