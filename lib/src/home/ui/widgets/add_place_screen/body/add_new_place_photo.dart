import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../common_used_widgets/action_button_generic.dart';
import '../../../../../common_used_widgets/card_image_generic.dart';

class AddNewPlacePhoto extends StatefulWidget {
  const AddNewPlacePhoto({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddNewPlacePhoto();
  }
}

String? photoUrl;
bool imageNull = false;
bool asset = false;

class _AddNewPlacePhoto extends State<AddNewPlacePhoto> {

  @override
  Widget build(BuildContext context) {

    if (photoUrl == null) {
      imageNull = true;
      asset = true;
    }

    return Stack(
        alignment: const Alignment(0,1.15),
        children: [
          SizedBox(
              height: 260,
              child: Center(
                child: CardImageGeneric(
                  network: false,
                  asset: asset,
                  pathImage: imageNull ? "assets/img/photo.png" : photoUrl!,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  top: 0,
                  right: 50,
                  left: 50,
                ),
              )

          ),
          ActionButtonGeneric(
            onPressed: () async {
              await ImagePicker().pickImage(
                  source: ImageSource.camera
              ).then((image) {
                if (image == null) {
                  return;
                }

                setState(() {
                  photoUrl = image.path;
                  imageNull = false;
                  asset = false;

                });


              }).catchError((onError) => print(onError));
            },
            heroTag: "Take a photo",
            icon: Icons.camera_alt,
            mini: false,
            tooltip: 'Take a photo',
            snackbar: false,
          )


        ]
    );
  }
}





