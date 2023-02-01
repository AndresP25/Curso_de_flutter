import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/ui/custom_app_bar/section_data/profile_data.dart';

class ProfileSectionData extends StatelessWidget{

  String pathOfProfileImage;
  String userName;
  String email;

  ProfileSectionData(this.pathOfProfileImage,this.userName,this.email,{super.key});

  @override
  Widget build(BuildContext context) {

    final profileSectionData = Row(
      children: [

        Container(

          height: 100,
          width: 100,

          margin: const EdgeInsets.only(
              top: 10,
              left: 20
          ),

          padding: const EdgeInsets.all(2.0),

          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: CircleAvatar(
            //
            backgroundImage: AssetImage(
                pathOfProfileImage
            ),
          ),
        ),

        ProfileData(userName, email),

      ],

    );

    return profileSectionData;
  }


}