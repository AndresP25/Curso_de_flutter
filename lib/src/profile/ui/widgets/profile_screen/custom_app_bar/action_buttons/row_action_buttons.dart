import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/src/common_used_widgets/action_button_generic.dart';
import 'package:platzi_trips_app/src/home/ui/screens/u_i_add_place.dart';
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
                onPressed: () async {
                  await ImagePicker().pickImage(
                    source:ImageSource.camera
                  ).then((image) {
                    if (image == null) {
                      return;
                    }
                    print("Image selected: ${image.path}");
                    Navigator.push(
                        context,

                        MaterialPageRoute(
                            builder: (BuildContext context) => UiAddPlace(image: image.path)
                        )
                    );
                  }).catchError((onError) => print(onError));


                },
                heroTag: "Add new photo",
                icon: Icons.add_a_photo,
                mini: false,
                tooltip: 'Add new photo',
                snackbar: true,
                snackbarTextPressed: "Please take a photo and complete the form",
            )),//AddNewPhotoButton()),

            Expanded(child: ActionButtonGeneric(
              onPressed: (){profileBloc?.signOut();},//profileBloc?.signOut(),
              heroTag: "Log out",
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