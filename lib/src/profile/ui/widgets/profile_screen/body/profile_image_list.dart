import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_image_stack.dart';

class ProfileImageList extends StatelessWidget{

  List listOfProfileImage;

  ProfileImageList(this.listOfProfileImage,{super.key});

  @override
  Widget build(BuildContext context) {


    List<Widget> profileImageListConstructor() {

      List<Widget> profileImageList = [];


      for (int i = 0; i < listOfProfileImage.length; i++){
        profileImageList.add(
            ProfileImageStack(
                namePlace: listOfProfileImage[i].namePlace,//['nameDescription'],
                description: listOfProfileImage[i].description,//['description'],
                urlPlaceImage: listOfProfileImage[i].urlPlaceImage,//['pathImage'],
                likes: listOfProfileImage[i].likes,//['steps']
            )
        );
      }
      return profileImageList;
    }

    final profileImageList = Column(

      children: profileImageListConstructor(),
    );
    return profileImageList;
  }

}