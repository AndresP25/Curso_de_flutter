import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget{

  String userName;
  String email;

  ProfileData(this.userName, this.email, {super.key});

  @override
  Widget build(BuildContext context) {

    final profileData = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


            Container(

                margin: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right:20
                ),

                child: Center(
                  child:Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                )
                ),

            ),


          Container(
              margin: const EdgeInsets.only(
                  top:5,
                  left: 20,
                  right: 20
              ),
              //alignment: const Alignment(0,0),
              child: Center(

                child:Text(
                  email,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white54,
                  ),
                )
              )

          ),
        ],
    );
    return profileData;
  }


}