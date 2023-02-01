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
                  left: 20
              ),
              //alignment: const Alignment(0,0),
              child: Text(
                userName,

                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              )

          ),

          Container(
              margin: const EdgeInsets.only(
                  top:5,
                  left: 20
              ),
              //alignment: const Alignment(0,0),
              child: Text(
                email,

                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white54,

                                  ),
              )

          ),
        ],
    );
    return profileData;
  }


}