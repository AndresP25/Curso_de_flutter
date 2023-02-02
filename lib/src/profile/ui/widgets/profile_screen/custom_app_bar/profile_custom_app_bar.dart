import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/container_background.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/action_buttons/row_action_buttons.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/section_data/profile_section_data.dart';

class ProfileCustomAppBar extends StatelessWidget {

  String userName;
  String email;
  String pathOfProfileImage;
  String appBarrText = "Profile";
  ProfileCustomAppBar(this.pathOfProfileImage, this.userName,this.email, {super.key} );

  @override
  Widget build(BuildContext context) {

    final appBar = SizedBox(
      height: 270,

      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: const EdgeInsets.only(
              top:41,
              left: 21.5
            ),
            //alignment: const Alignment(0,0),
            child: Text(
              appBarrText,

              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            )

          ),

          ProfileSectionData(pathOfProfileImage, userName, email),


          const RowActionButtons()
        ],
      ),
    );

    return Stack(

      children:   [

         ClipRect( //Para recortar el gradiente hasta la parte del appbar
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.72,

            child: ContainerBackground(400),
          ),
        ),

        appBar,

          ],
    );


  }


}