import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_trips_app/components/ui/ui_platzi_trips/platzi_trips_cupertino.dart';
import 'package:platzi_trips_app/components/ui/ui_platzi_trips/platzi_trips.dart';

void main() =>  runApp( const MyApp());

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


    return const MaterialApp(
      title: 'PlatziTrips',
      /*
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      */

      home: PlatziTrips(),

      );
  }
}

