import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_text_description/profile_description_text_description.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_text_description/profile_name_text_description.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/body/profile_text_description/profile_likes_text_description.dart';

class ProfileImageDescription extends StatelessWidget{

  String nameDescription;
  String description;
  int steps;

  ProfileImageDescription(this.nameDescription,this.description,this.steps,{super.key});

  @override
  Widget build(BuildContext context) {

    final profileImageDescription = Container(

      width: 250,

      decoration: const BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow:  [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0,7)
            )

          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileNameOfTextDescription(nameDescription),
          ProfileDescriptionOfTextDescription(description),
          ProfileLikesOfTextDescription(steps)

        ],

      ),
    );

    return profileImageDescription;
  }

}