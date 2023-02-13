import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/action_button_generic.dart';
import 'package:platzi_trips_app/src/common_used_widgets/title_appbar_generic.dart';

class ProfileTitleSection extends StatelessWidget{

  final String appBarrText;

  const ProfileTitleSection({super.key, required this.appBarrText});

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [
        TitleAppBarGeneric(
            appBarText: appBarrText,
            top:41,
            left:21.5
        ),

        const Spacer(flex:2),

        Container(
          margin: const EdgeInsets.only(
            top: 41,
            right: 21.5,
          ),
          child: ActionButtonGeneric(
            onPressed: (){},
            heroTag: "Settings",
            icon: Icons.settings,
            mini: true,
            tooltip: 'settings',
            snackbar: true,
            snackbarTextPressed: "Soon... Change password",
          ),//const SettingsButton(),
        )
      ],
    );

  }


}