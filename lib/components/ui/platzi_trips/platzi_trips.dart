import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/home/u_i_home.dart';

class PlatziTrips extends StatefulWidget{
  const PlatziTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;

  final List<Widget> widgetChildren =[
    UiHome(),
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


          currentIndex: indexTap,
          onTap: onTapTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""
            ),
          ],
        ),
      ),

    );
    return navigationBar;
  }

}