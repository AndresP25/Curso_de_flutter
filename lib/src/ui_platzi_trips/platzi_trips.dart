import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/home/ui/screens/u_i_home.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';
import 'package:platzi_trips_app/src/profile/ui/screens/u_i_profile.dart';

class PlatziTrips extends StatefulWidget{
  const PlatziTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;
  ProfileBloc? profileBloc;

  final List<Widget> widgetChildren =[
    UiHome(),
    //para acceder a los datos
    BlocProvider<ProfileBloc>(bloc: ProfileBloc(), child:UiProfile()),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final navigationBar = Scaffold(

      body: widgetChildren[indexTap],

      bottomNavigationBar: Theme(

        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.black, //para los iconos seleccionados

        ),

        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,

          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,

          onTap: onTapTapped,
          currentIndex: indexTap,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 30.0),

                label: ""
            ),
            /*
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
            ),

             */
            BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 30.0),
                label: ""
            ),
          ],
        ),
      ),

    );
    return navigationBar;
  }

}