import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/common_used_widgets/action_button_generic.dart';

class ProfileTitleSection extends StatelessWidget{

  final String appBarrText;

  const ProfileTitleSection({super.key, required this.appBarrText});

  @override
  Widget build(BuildContext context) {

    return Row(

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
          ),
        ),

        const Spacer(flex:2),

        Container(
          margin: const EdgeInsets.only(
            top: 41,
            right: 21.5,
          ),
          child: ActionButtonGeneric(
            onPressed: (){},
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