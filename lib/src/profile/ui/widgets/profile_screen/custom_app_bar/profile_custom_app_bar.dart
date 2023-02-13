import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/gradient_generic.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/action_buttons/row_action_buttons.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/section_data/profile_section_data.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/profile_title_section.dart';

class ProfileCustomAppBar extends StatelessWidget {

  String appBarrText = "Profile";

  ProfileCustomAppBar({super.key} );

  @override
  Widget build(BuildContext context) {

    final appBar =Stack(
      children: [
        GradientGeneric(height: 400.0),
        SizedBox(
          height: 270,

          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ProfileTitleSection(appBarrText: appBarrText),

              ProfileSectionData(),

              RowActionButtons()
            ],
          ),
        )
      ]
    );


    return appBar;


  }


}