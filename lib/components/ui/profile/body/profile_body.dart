import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/profile/body/profile_image_list.dart';

class ProfileBody extends StatelessWidget {

  List listOfProfileImage;

  ProfileBody(this.listOfProfileImage,{super.key});

  @override
  Widget build(BuildContext context) {

    final profileBody = ListView(
      children:[
        ProfileImageList(listOfProfileImage)
      ]

    );

    return profileBody;
  }

}