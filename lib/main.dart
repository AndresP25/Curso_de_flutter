import 'package:flutter/material.dart';
import 'components/ui/u_i.dart';
import 'package:flutter/services.dart';

void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

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


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UI(),

      );
  }
}

