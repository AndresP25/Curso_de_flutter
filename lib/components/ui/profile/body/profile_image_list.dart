import 'package:flutter/material.dart';
import 'package:platzi_trips_app/components/ui/profile/body/profile_image_stack.dart';

class ProfileImageList extends StatelessWidget{

  List listOfProfileImage;

  ProfileImageList(this.listOfProfileImage,{super.key});

  @override
  Widget build(BuildContext context) {

    final emptyContainer = Container(

      height: 285,
    );

    List<Widget> profileImageListConstructor() {

      List<Widget> profileImageList = [];
      profileImageList.add(emptyContainer) ;

      for (int i = 0; i < listOfProfileImage.length; i++){
        profileImageList.add(
            ProfileImageStack(
                listOfProfileImage[i]['pathImage'],
                listOfProfileImage[i]['nameDescription'],
                listOfProfileImage[i]['description'],
                listOfProfileImage[i]['steps']
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