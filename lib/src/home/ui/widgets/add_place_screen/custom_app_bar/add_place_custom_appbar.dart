import 'package:flutter/material.dart';
import '../../../../../common_used_widgets/action_button_generic.dart';
import '../../../../../common_used_widgets/gradient_generic.dart';
import '../../../../../common_used_widgets/title_appbar_generic.dart';

class AddPlaceCustomAppBar extends StatelessWidget {

  const AddPlaceCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final appbar = Stack(
      children: [

        GradientGeneric(height: 250.0),

        Row(
          children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 40,
                  left: 10,
                ),
                child: ActionButtonGeneric(
                  onPressed: () { Navigator.pop(context); },
                  heroTag: "Go back",
                  icon: Icons.keyboard_arrow_left_rounded,
                  mini: true,
                  tooltip: 'Go back',
                  snackbar: false,
                ),
              ),

              TitleAppBarGeneric(
                appBarText: "Add a new place",
                top:41,
                left:21.5
              ),
            ]
        ),
      ],
    );

    return appbar;
  }

}