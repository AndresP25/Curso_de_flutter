import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/ui/custom_app_bar/action_buttons/add_new_photo_button.dart';
import 'package:platzi_trips_app/src/profile/ui/custom_app_bar/action_buttons/log_out_button.dart';
import 'package:platzi_trips_app/src/profile/ui/custom_app_bar/action_buttons/saved_favorite_places_button.dart';

class RowActionButtons extends StatelessWidget{
  const RowActionButtons({super.key});

  @override
  Widget build(BuildContext context) {

    final rowActionButtons =  Container(

        margin: const EdgeInsets.only(top:15),
        child: Row(

          children: const [
            Expanded(child: SavedFavoritePlacesButton()),
            Expanded(child: AddNewPhotoButton()),
            Expanded(child: LogOutButton())
          ],
        )
    )
    ;

    return rowActionButtons;
  }


}