import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/common_used_widgets/action_button_generic.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/action_buttons/saved_favorite_places_button.dart';

class RowActionButtons extends StatelessWidget{
  RowActionButtons({super.key});

  ProfileBloc? profileBloc;

  @override
  Widget build(BuildContext context) {

    profileBloc = BlocProvider.of(context);

    final rowActionButtons =  Container(

        margin: const EdgeInsets.only(top:15),
        child: Row(

          children: [
            const Expanded(child: SavedFavoritePlacesButton()),

            Expanded(child: ActionButtonGeneric(
                onPressed: (){},
                icon: Icons.add_a_photo,
                mini: false,
                tooltip: 'Add new photo',
                snackbar: true,
                snackbarTextPressed: "SOON... Add Photo",
            )),//AddNewPhotoButton()),

            Expanded(child: ActionButtonGeneric(
              onPressed: (){profileBloc?.signOut();},//profileBloc?.signOut(),
              icon: Icons.logout,
              mini: true,
              tooltip: 'Log Out',
              snackbar: true,
              snackbarTextPressed: "See you soon!!",
            )),//LogOutButton())
          ],
        )
    )
    ;

    return rowActionButtons;
  }


}