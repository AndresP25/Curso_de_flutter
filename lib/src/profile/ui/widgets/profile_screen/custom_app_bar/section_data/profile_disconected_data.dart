import 'package:flutter/material.dart';

class ProfileDisconectedData extends StatelessWidget{

  final String disconectedData;
  const ProfileDisconectedData({super.key, required this.disconectedData});

  @override
  Widget build(BuildContext context) {

    final profileDisconectedData = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Container(
            margin: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20
            ),
            //alignment: const Alignment(0,0),
            child: Text(
              disconectedData,

              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            )

        ),


      ],
    );
    return profileDisconectedData;
  }


}